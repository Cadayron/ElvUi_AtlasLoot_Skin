local UI
if ElvUI then UI=ElvUI else UI=Tukui end
local T, C, L, DB = unpack(UI)


local function AL_OnShow(self, event, ...)

	-- Move Positions
	AtlasLootPanel:Point("TOP", AtlasLootDefaultFrame, "BOTTOM", 0, -1)
	AtlasLootQuickLooksButton:Point("BOTTOM", AtlasLootItemsFrame, "BOTTOM", 53, 33)
	AtlasLootPanelSearch_Box:ClearAllPoints()
	AtlasLootPanelSearch_Box:Point("TOP", AtlasLoot_PanelButton_7, "BOTTOM", 80, -10)
	AtlasLootPanelSearch_SearchButton:Point("LEFT", AtlasLootPanelSearch_Box, "RIGHT", 5, 0)
	AtlasLootPanelSearch_SelectModuel:Point("LEFT", AtlasLootPanelSearch_SearchButton, "RIGHT", 5, 0)
	AtlasLootPanelSearch_ClearButton:Point("LEFT", AtlasLootPanelSearch_SelectModuel, "RIGHT", 5, 0)
	AtlasLootPanelSearch_LastResultButton:Point("LEFT", AtlasLootPanelSearch_ClearButton, "RIGHT", 5, 0)
	AtlasLoot10Man25ManSwitch:Point("BOTTOM", AtlasLootItemsFrame, "BOTTOM", -130, 4)
	AtlasLootServerQueryButton:Point("BOTTOM", AtlasLootItemsFrame, "BOTTOM", 130, 4)
	AtlasLoot_PanelButton_2:Point("LEFT", AtlasLoot_PanelButton_1, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_3:Point("LEFT", AtlasLoot_PanelButton_2, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_4:Point("LEFT", AtlasLoot_PanelButton_3, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_5:Point("LEFT", AtlasLoot_PanelButton_4, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_6:Point("LEFT", AtlasLoot_PanelButton_5, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_8:Point("LEFT", AtlasLoot_PanelButton_7, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_9:Point("LEFT", AtlasLoot_PanelButton_8, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_10:Point("LEFT", AtlasLoot_PanelButton_9, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_11:Point("LEFT", AtlasLoot_PanelButton_10, "RIGHT", 1, 0)
	AtlasLoot_PanelButton_12:Point("LEFT", AtlasLoot_PanelButton_11, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_Rarity:Point("LEFT", AtlasLootCompareFrameSortButton_Name, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_1:Point("LEFT", AtlasLootCompareFrameSortButton_Rarity, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_2:Point("LEFT", AtlasLootCompareFrameSortButton_1, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_3:Point("LEFT", AtlasLootCompareFrameSortButton_2, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_4:Point("LEFT", AtlasLootCompareFrameSortButton_3, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_5:Point("LEFT", AtlasLootCompareFrameSortButton_4, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_6:Point("LEFT", AtlasLootCompareFrameSortButton_5, "RIGHT", 1, 0)
	AtlasLootCompareFrame_CloseButton2:Point("BOTTOMRIGHT", AtlasLootCompareFrame, "BOTTOMRIGHT", -7, 10)
	AtlasLootCompareFrame_WishlistButton:Point("RIGHT", AtlasLootCompareFrame_CloseButton2, "LEFT", -1, 0)
	AtlasLootCompareFrameSearch_SearchButton:Point("LEFT", AtlasLootCompareFrameSearch_Box, "RIGHT", 5, 0)
	AtlasLootCompareFrameSearch_SelectModuel:Point("LEFT", AtlasLootCompareFrameSearch_SearchButton, "RIGHT", 5, 0)
	-- Set Sizes
	local AL = ""
		if AL == "" then
			AtlasLootPanelSearch_Box:SetHeight(16)
			AtlasLootPanel:SetWidth(921)
		end
		T.SkinCloseButton(AtlasLootDefaultFrame_LockButton)
end

local function Nine_IsThere(Self, event, ...)
				
				for i = 1, 9 do 
						local f = _G["AtlasLootCompareFrameSortButton_"..i]
						f:SetWidth(44.44)
				end
				
		local StripAllTextures = {
				"AtlasLootCompareFrameSortButton_7",
				"AtlasLootCompareFrameSortButton_8",
				"AtlasLootCompareFrameSortButton_9",
				}

	local SetTemplateD = { -- Default Texture
				"AtlasLootCompareFrameSortButton_7",
				"AtlasLootCompareFrameSortButton_8",
				"AtlasLootCompareFrameSortButton_9",
				}

				for _, object in pairs(StripAllTextures) do
							_G[object]:StripTextures()
				end	

				for _, object in pairs(SetTemplateD) do
							_G[object]:SetTemplate("Default")
				end		

	AtlasLootCompareFrameSortButton_7:Point("LEFT", AtlasLootCompareFrameSortButton_6, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_8:Point("LEFT", AtlasLootCompareFrameSortButton_7, "RIGHT", 1, 0)
	AtlasLootCompareFrameSortButton_9:Point("LEFT", AtlasLootCompareFrameSortButton_8, "RIGHT", 1, 0)
				
end

local function Compare_OnShow(self, event, ...)

				for i = 1, 6 do 
						local f = _G["AtlasLootCompareFrameSortButton_"..i]
						f:SetWidth(67.17)
				end
	
				local Nine = AtlasLootCompareFrameSortButton_9
					if Nine ~= nil then
					Nine:SetScript("OnUpdate", Nine_IsThere)
					else
					end	
end

local SkinAL = CreateFrame("Frame")
	SkinAL:RegisterEvent("PLAYER_ENTERING_WORLD")
	SkinAL:SetScript("OnEvent", function(self, event, addon)
	if IsAddOnLoaded("Skinner") or IsAddOnLoaded("Aurora") then return end
	if not IsAddOnLoaded("AtlasLoot") then return end
			
		local FrameShow = AtlasLootDefaultFrame
		FrameShow:SetScript("OnUpdate", AL_OnShow)
		
		local CompareFrameShow = AtlasLootCompareFrame
		CompareFrameShow:SetScript("OnUpdate", Compare_OnShow)
		

			--start		
	local StripAllTextures = {
                "AtlasLootDefaultFrame",
                "AtlasLootItemsFrame",
				"AtlasLootPanel",
				"AtlasLootCompareFrame",
				"AtlasLootCompareFrame_ScrollFrameMainFilterScrollChildFrame",
				"AtlasLootCompareFrame_ScrollFrameItemFrameScrollChildFrame",
				"AtlasLootCompareFrame_ScrollFrameItemFrame",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item1",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item2",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item3",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item4",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item5",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item6",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item7",
				"AtlasLootCompareFrame_ScrollFrameItemFrame_Item8",
				"AtlasLootCompareFrame_ScrollFrameMainFilter",
				"AtlasLootCompareFrame_Wishlist",
				"AtlasLootCompareFrameSortButton_Name",
				"AtlasLootCompareFrameSortButton_Rarity",
				"AtlasLootCompareFrameSortButton_1",
				"AtlasLootCompareFrameSortButton_2",
				"AtlasLootCompareFrameSortButton_3",
				"AtlasLootCompareFrameSortButton_4",
				"AtlasLootCompareFrameSortButton_5",
				"AtlasLootCompareFrameSortButton_6",
				}

	local SetTemplateD = { -- Default Texture
                "AtlasLootItemsFrame",
				"AtlasLootCompareFrameSortButton_Name",
				"AtlasLootCompareFrameSortButton_Rarity",
				"AtlasLootCompareFrameSortButton_1",
				"AtlasLootCompareFrameSortButton_2",
				"AtlasLootCompareFrameSortButton_3",
				"AtlasLootCompareFrameSortButton_4",
				"AtlasLootCompareFrameSortButton_5",
				"AtlasLootCompareFrameSortButton_6",
				"AtlasLootCompareFrame_Wishlist",
				}

	local SetTemplateT = {-- Transparent Texture
                "AtlasLootDefaultFrame",
                "AtlasLootPanel",
				"AtlasLootCompareFrame",
				}	
	
	local buttons = {
                "AtlasLoot_AtlasInfoFrame_ToggleALButton",
                "AtlasLootServerQueryButton",
                "AtlasLootPanelSearch_SearchButton",
                "AtlasLootDefaultFrame_CompareFrame",
				"AtlasLootPanelSearch_ClearButton",
				"AtlasLootPanelSearch_LastResultButton",
				"AtlasLoot10Man25ManSwitch",
				"AtlasLootItemsFrame_BACK",
				"AtlasLootCompareFrameSearch_ClearButton",
				"AtlasLootCompareFrameSearch_SearchButton",
				"AtlasLootCompareFrame_WishlistButton",
				"AtlasLootCompareFrame_CloseButton2",
				}
							
				for _, object in pairs(StripAllTextures) do
							_G[object]:StripTextures()
				end	

				for _, object in pairs(SetTemplateD) do
							_G[object]:SetTemplate("Default")
				end	

				for _, object in pairs(SetTemplateT) do
							_G[object]:SetTemplate("Transparent")
				end			
	
	-- Skin Buttons
				for _, button in pairs(buttons) do
								T.SkinButton(_G[button])
				end	
	
				for i = 1, 12 do
					local f = _G["AtlasLoot_PanelButton_"..i]
					T.SkinButton(f)
				end
				for i = 1, 15 do -- 15 that I could find
					local f = _G["AtlasLootCompareFrameMainFilterButton"..i]
					f:StripTextures()
				end
				
	-- Skin Close Buttons
		T.SkinCloseButton(AtlasLootDefaultFrame_CloseButton)
		T.SkinCloseButton(AtlasLootDefaultFrame_LockButton, nil, '•')
		T.SkinCloseButton(AtlasLootCompareFrame_CloseButton)
		T.SkinCloseButton( AtlasLootCompareFrame_CloseButton_Wishlist)
	
	-- Skin Next Previous Buttons	
		T.SkinNextPrevButton(AtlasLootQuickLooksButton)
		T.SkinNextPrevButton(AtlasLootItemsFrame_NEXT)
		T.SkinNextPrevButton(AtlasLootItemsFrame_PREV)
		T.SkinNextPrevButton(AtlasLootPanelSearch_SelectModuel)	
		T.SkinNextPrevButton(AtlasLootCompareFrameSearch_SelectModuel)		
	
	-- Skin Dropdown Boxes		
		T.SkinDropDownBox(AtlasLootDefaultFrame_ModuleSelect, 225)
		T.SkinDropDownBox(AtlasLootDefaultFrame_InstanceSelect, 225)
		T.SkinDropDownBox(AtlasLootCompareFrameSearch_StatsListDropDown,240)
		T.SkinDropDownBox(AtlasLootCompareFrame_WishlistDropDown,200)
		
	-- Skin Edit Boxes
		T.SkinEditBox(AtlasLootPanelSearch_Box)
		T.SkinEditBox(AtlasLootCompareFrameSearch_Box)
		
	-- Skin Check Boxes
		T.SkinCheckBox(AtlasLootFilterCheck)
		T.SkinCheckBox(AtlasLootItemsFrame_Heroic)
		T.SkinCheckBox(AtlasLootCompareFrameSearch_FilterCheck)
	--end	
	
	-- Skin ScrollBar
	T.SkinScrollBar(AtlasLootCompareFrame_ScrollFrameItemFrameScrollBar)
	T.SkinScrollBar(AtlasLootCompareFrame_WishlistScrollFrameScrollBar)
	
end)