
local function getDistance(first, second)
  return math.sqrt(math.pow(first.x - second.x, 2) + math.pow(first.y - second.y, 2))
end

local function getFromInventory(table, player)
  if not player then
    return false
  end
  if not player.get_main_inventory then
    return false
  end
  local inventory = player.get_main_inventory()
  for i = 1, #inventory do
    if not inventory[i] then
      goto continue
    end
    if not inventory[i].valid_for_read then
      goto continue
    end
    if inventory[i].name == table.param then
      return player.cursor_stack.transfer_stack(inventory[i])
    end
    ::continue::
  end
end

return {
  getDistance=getDistance,
  getFromInventory=getFromInventory,
}
