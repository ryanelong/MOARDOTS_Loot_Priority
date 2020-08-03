-- searches for a specific item's information in loot_table.lua

function search_for_item(itemname)
  for index, value in next, MOARDOTS_loot_table do
    if value["loot_id"] == itemname then
      return value["prio"]
    end
  end
end

function search_for_note(itemname)
  for index, value in next, MOARDOTS_loot_table do
    if value["loot_id"] == itemname then
      return value["note"]
    end
  end
end