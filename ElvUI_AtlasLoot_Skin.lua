﻿local function AL_OnShow(self, event, ...)

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
	
-- These buttons are not always shown.	
	if AtlasLoot_PanelButton_2 then AtlasLoot_PanelButton_2:Point("LEFT", AtlasLoot_PanelButton_1, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_3 then AtlasLoot_PanelButton_3:Point("LEFT", AtlasLoot_PanelButton_2, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_4 then AtlasLoot_PanelButton_4:Point("LEFT", AtlasLoot_PanelButton_3, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_5 then AtlasLoot_PanelButton_5:Point("LEFT", AtlasLoot_PanelButton_4, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_6 then AtlasLoot_PanelButton_6:Point("LEFT", AtlasLoot_PanelButton_5, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_8 then AtlasLoot_PanelButton_8:Point("LEFT", AtlasLoot_PanelButton_7, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_9 then AtlasLoot_PanelButton_9:Point("LEFT", AtlasLoot_PanelButton_8, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_10 then AtlasLoot_PanelButton_10:Point("LEFT", AtlasLoot_PanelButton_9, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_11 then AtlasLoot_PanelButton_11:Point("LEFT", AtlasLoot_PanelButton_10, "RIGHT", 1, 0) end
	if AtlasLoot_PanelButton_12 then AtlasLoot_PanelButton_12:Point("LEFT", AtlasLoot_PanelButton_11, "RIGHT", 1, 0) end

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
	AtlasLootDefaultFrame_CloseButton:ClearAllPoints()
	AtlasLootDefaultFrame_CloseButton:SetPoint("TOPRIGHT",  AtlasLootDefaultFrame, "TOPRIGHT", -5 -2)
	
	-- Set Sizes
	local AL = ""
		if AL == "" then
			AtlasLootPanelSearch_Box:SetHeight(16)
			AtlasLootPanel:SetWidth(921)
		end
		
				cDesaturate(AtlasLootDefaultFrame_LockButton)
				
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
		cSkinScrollBar(AtlasLootCompareFrame_ScrollFrameItemFrameScrollBar)
		cSkinScrollBar(AtlasLootCompareFrame_WishlistScrollFrameScrollBar)
end

local function OnEnter(Self)
  GameTooltip:SetOwner(Self, "ANCHOR_CURSOR")
  GameTooltip:AddLine("Left-Click: Toggle World Map", 1, 1, 1)
  GameTooltip:AddLine("Right-Click: Toggle AtlasLoot", 1, 1, 1)
  GameTooltip:Show()
end

local function OnLeave(Self)
  GameTooltip:Hide()
end

--[[ disabled for now

local mToggleRight = _G["ElvUIMapToggle"]
	if ElvUI then
	mToggleRight:RegisterEvent("PLAYER_ENTERING_WORLD")
	mToggleRight:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	mToggleRight:SetScript("OnClick", function(self, btn)

			if btn == "RightButton" then
				if (AtlasLootDefaultFrame:IsVisible()) then
					AtlasLootDefaultFrame:Hide()
				else
					AtlasLootDefaultFrame:Show()
				end	
			else
				ToggleWorldMap()
			end
	end)
end ]]

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
				"AtlasLootCompareFrame_ScrollFrameItemFrame",
				"AtlasLootCompareFrame_ScrollFrameMainFilter",
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
								cSkinButton(_G[button])
				end	
	
	-- These buttons are not always shown.				
				if AtlasLoot_PanelButton_1 then cSkinButton(AtlasLoot_PanelButton_1) end
				if AtlasLoot_PanelButton_2 then cSkinButton(AtlasLoot_PanelButton_2) end
				if AtlasLoot_PanelButton_3 then cSkinButton(AtlasLoot_PanelButton_3) end
				if AtlasLoot_PanelButton_4 then cSkinButton(AtlasLoot_PanelButton_4) end
				if AtlasLoot_PanelButton_5 then cSkinButton(AtlasLoot_PanelButton_5) end
				if AtlasLoot_PanelButton_6 then cSkinButton(AtlasLoot_PanelButton_6) end
				if AtlasLoot_PanelButton_7 then cSkinButton(AtlasLoot_PanelButton_7) end
				if AtlasLoot_PanelButton_8 then cSkinButton(AtlasLoot_PanelButton_8) end
				if AtlasLoot_PanelButton_9 then cSkinButton(AtlasLoot_PanelButton_9) end
				if AtlasLoot_PanelButton_10 then cSkinButton(AtlasLoot_PanelButton_10) end
				if AtlasLoot_PanelButton_11 then cSkinButton(AtlasLoot_PanelButton_11) end
				if AtlasLoot_PanelButton_12 then cSkinButton(AtlasLoot_PanelButton_12) end
					
				for i = 1, 15 do -- 15 that I could find
					local f = _G["AtlasLootCompareFrameMainFilterButton"..i]
					f:StripTextures()
				end
				
	-- Skin Close Buttons
		cSkinCloseButton(AtlasLootDefaultFrame_CloseButton)
		cSkinCloseButton(AtlasLootCompareFrame_CloseButton)
		cSkinCloseButton(AtlasLootCompareFrame_CloseButton_Wishlist)
		
	-- Skin Lock Button
		--cDesaturate(AtlasLootDefaultFrame_LockButton)
		cSkinCloseButton(AtlasLootDefaultFrame_LockButton, nil, '•')
	
	-- Skin Next Previous Buttons	
		cSkinNextPrevButton(AtlasLootQuickLooksButton)
		cSkinNextPrevButton(AtlasLootItemsFrame_NEXT)
			AtlasLootItemsFrame_NEXT:SetWidth(25)
			AtlasLootItemsFrame_NEXT:SetHeight(25)
		cSkinNextPrevButton(AtlasLootItemsFrame_PREV)
			AtlasLootItemsFrame_PREV:SetWidth(25)
			AtlasLootItemsFrame_PREV:SetHeight(25)
		cSkinNextPrevButton(AtlasLootPanelSearch_SelectModuel)	
		cSkinNextPrevButton(AtlasLootCompareFrameSearch_SelectModuel)		
	
	-- Skin Dropdown Boxes		
		cSkinDropDownBox(AtlasLootDefaultFrame_ModuleSelect, 225)
		cSkinDropDownBox(AtlasLootDefaultFrame_InstanceSelect, 225)
		cSkinDropDownBox(AtlasLootCompareFrameSearch_StatsListDropDown,240)
		cSkinDropDownBox(AtlasLootCompareFrame_WishlistDropDown,200)
		
	-- Skin Edit Boxes
		cSkinEditBox(AtlasLootPanelSearch_Box)
		cSkinEditBox(AtlasLootCompareFrameSearch_Box)
		
	-- Skin Check Boxes
		cSkinCheckBox(AtlasLootFilterCheck)
		cSkinCheckBox(AtlasLootItemsFrame_Heroic)
		cSkinCheckBox(AtlasLootItemsFrame_RaidFinder)
		cSkinCheckBox(AtlasLootCompareFrameSearch_FilterCheck)
	--end	
	
	-- Show tooltips
--[[ disabled for now
 	if ElvUI then
		local mToggleRight = _G["ElvUIMapToggle"]
		mToggleRight:SetScript("OnEnter", OnEnter)
		mToggleRight:SetScript("OnLeave", OnLeave)
	end ]]
	
	local Frame = AtlasLootPanel
	Frame.Titel:SetTextColor(23/255, 132/255, 209/255)
	Frame.Titel:SetPoint("BOTTOM", Frame.TitelBg, "BOTTOM", 0, 40)
	
end)