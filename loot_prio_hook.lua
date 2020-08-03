BINDING_HEADER_PDLOOTPRIO = "MOAR DOTS Loot Priority";

local function addLootInfo(tooltip)
  local itemname, itemlink = tooltip:GetItem()
  
  if itemlink then
	priority = search_for_item(itemlink:match("item:(%d+):"))
	itemnote = search_for_note(itemlink:match("item:(%d+):"))
  end
  
  if priority then
  	prio = string.format("\n|c00ff99ffMD loot prio:\n|c008aecff %s", priority)
  	tooltip:AddLine(prio)
	
	if itemnote then
	  note = string.format("|c008aecff %s", itemnote)
	  tooltip:AddLine(note)
	end
  end
  
end

GameTooltip:HookScript("OnTooltipSetItem", addLootInfo)
ItemRefTooltip:HookScript("OnTooltipSetItem", addLootInfo)
