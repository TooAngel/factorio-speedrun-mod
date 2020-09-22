helper = require('helper')

local function pickup(table, player)
  local distance = helper.getDistance(player.position, table.pos)
  if distance > 8 then
    return false
  end
  log(string.format("pickup from %s", table.param))

  local entity = player.surface.find_entity(table.param, table.pos)
  log(serpent.block(entity))
  log(entity)
  if not entity then
    return false
  end
  local inventory = entity.get_output_inventory()
  if not inventory then
    inventory = entity.get_inventory(defines.inventory.chest)
  end
  for i = 1, #inventory do
    if not inventory[i] then
      -- continue does not exist, return is not good, too
      return
    end
    if not inventory[i].valid_for_read then
      return
    end
    local emptyStack = player.get_main_inventory().find_empty_stack()
    return emptyStack.transfer_stack(inventory[i])
  end
end

local function fuelEntity(table, player)
  log(string.format("fuelEntity %s %d", table.type, table.count))
  helper.getFromInventory({param=table.fuel}, player)
  local entity = player.surface.find_entity(table.type, table.pos)
  -- don't like this
  inserted = entity.get_fuel_inventory().insert{name=player.cursor_stack.name, count=table.count}
  if player.cursor_stack.count - table.count > 0 then
    player.get_main_inventory().insert{name=player.cursor_stack.name, count=player.cursor_stack.count - table.count}
  end
  player.cursor_stack.clear()
  return true
end

local function placeEntity(table, player)
  local distance = helper.getDistance(player.position, table.pos)
  if distance > 9 then
    return false
  end

  log(string.format("placeEntity %s", table.type))
  helper.getFromInventory({param=table.type}, player)
  if not player.can_build_from_cursor{position={table.pos.x, table.pos.y}, direction=table.direction} then
   return false
  end
  player.build_from_cursor{position={table.pos.x, table.pos.y}, direction=table.direction}
  player.clean_cursor()
  -- Todo somehow check if building was successful
  -- local entity = player.surface.find_entity(table.type, table.pos)
  -- if not entity then
  --  return false
  -- end
  if table.fuel then
    fuelEntity(table, player)
  end
  return true
end

local function craft(table, player)
  player.begin_crafting{count=table.count, recipe=table.recipe}
  return true
end

local function mineEntity(table, player)
  local distance = helper.getDistance(player.position, table.param)
  if distance > 3 then
    return false
  end

  if table.limit then
    inventory = player.get_main_inventory()
    count = 0
    for i = 1, #inventory do
      if not inventory[i] then
        goto continue
      end
      if not inventory[i].valid_for_read then
        goto continue
      end
      if inventory[i].name == table.limit.type then
        count = count + inventory[i].count
      end
      if count >= table.limit.count then
        return true
      end
      ::continue::
    end
  end

  area = {
    {table.param.x-1, table.param.y-1},
    {table.param.x+1, table.param.y+1},
  }
  local entities = player.surface.find_entities_filtered{area = area, type = table.type}
  if #entities > 0 then
    player.update_selected_entity(table.param)
    player.mining_state = {mining = true, position=table.param}
    return false
  end
  return true
end

return {
  craft=craft,
  pickup=pickup,
  fuelEntity=fuelEntity,
  mineEntity=mineEntity,
  placeEntity=placeEntity,
}
