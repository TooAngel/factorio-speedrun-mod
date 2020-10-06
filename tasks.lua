helper = require('helper')

local function pickupFromChest(table, player)
  if table.structure then
    type = table.structure.type
    pos = table.structure.pos
  else
    log(string.format("%s not yet in structure format", table.type))
    type = table.type
    pos = table.pos
  end
  local distance = helper.getDistance(player.position, pos)
  if distance > 8 then
    return false
  end
  log(string.format("pickupFromChest from %s", type))

  local area = {
    {pos.x-1, pos.y-1},
    {pos.x+1, pos.y+1},
  }
  local entities = player.surface.find_entities_filtered{area = area, type = type}
  local entity = entities[1]
  if not entity then
    return false
  end
  local inventory = entity.get_inventory(defines.inventory.chest)
  success = false
  for i = 1, #inventory do
    if inventory[i] and inventory[i].valid_for_read then
      local emptyStack = player.get_main_inventory().find_empty_stack()
      success = success or emptyStack.transfer_stack(inventory[i])
    end
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
    return false
  end
  return success
end


local function fuelEntity(table, player)
  type = table.structure.type
  pos = table.structure.pos
  log(string.format("fuelEntity %s %d %s", type, table.count, table.fuel))
  helper.getFromInventory({param=table.fuel}, player)
  local entity = player.surface.find_entity(type, pos)
  local inventory = entity.get_fuel_inventory()
  if type == 'lab' then
    inventory = entity.get_inventory(defines.inventory.lab_input)
  end
  -- don't like this
  inserted = inventory.insert{name=player.cursor_stack.name, count=table.count}
  if player.cursor_stack.count - table.count > 0 then
    player.get_main_inventory().insert{name=player.cursor_stack.name, count=player.cursor_stack.count - table.count}
  end
  player.cursor_stack.clear()
  return true
end

local function fuelEntityChest(table, player)
  type = table.structure.type
  pos = table.structure.pos
  log(string.format("fuelEntityChest %s %d %s", type, table.count, table.fuel))
  helper.getFromInventory({param=table.fuel}, player)
  local area = {
    {pos.x-1, pos.y-1},
    {pos.x+1, pos.y+1},
  }
  local entities = player.surface.find_entities_filtered{area = area, type = type}
  local entity = entities[1]
  if not entity then
    return false
  end
  local inventory = entity.get_inventory(defines.inventory.chest)
  -- don't like this
  inserted = inventory.insert{name=player.cursor_stack.name, count=table.count}
  if player.cursor_stack.count - table.count > 0 then
    player.get_main_inventory().insert{name=player.cursor_stack.name, count=player.cursor_stack.count - table.count}
  end
  player.cursor_stack.clear()
  return true
end

local function placeEntity(table, player)
  type = table.structure.type
  pos = table.structure.pos
  direction = table.structure.direction
  entity = table.structure.entity

  local distance = helper.getDistance(player.position, pos)
  if distance > 9 then
    return false
  end

  log(string.format("placeEntity %s", entity))
  helper.getFromInventory({param=entity}, player)
  if not player.can_build_from_cursor{position={pos.x, pos.y}, direction=direction} then
   return false
  end
  player.build_from_cursor{position={pos.x, pos.y}, direction=direction}
  player.clean_cursor()
  -- Todo somehow check if building was successful
  -- local entity = player.surface.find_entity(table.type, table.pos)
  -- if not entity then
  --  return false
  -- end
  if table.fuel then
    fuelEntity(table, player)
  end
  if table.recipe then
    local entity = player.surface.find_entity(type, pos)
    entity.set_recipe(table.recipe)
  end
  return true
end

local function pickup(table, player)
  if table.structure then
    type = table.structure.type
    pos = table.structure.pos
  else
    log(string.format("%s not yet in structure format", table.type))
    type = table.param
    pos = table.pos
  end

  local distance = helper.getDistance(player.position, pos)
  if distance > 8 then
    return false
  end
  log(string.format("pickup from %s", type))

  local entity = player.surface.find_entity(type, pos)
  if not entity then
    return false
  end
  local inventory = entity.get_output_inventory()
  local success = false
  for i = 1, #inventory do
    if inventory[i] and inventory[i].valid_for_read then
      local emptyStack = player.get_main_inventory().find_empty_stack()
      success = success or emptyStack.transfer_stack(inventory[i])
    end
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
    return false
  end
  if table.fuel then
    fuelEntity(table, player)
  end
  return success
end

local function craft(table, player)
  player.begin_crafting{count=table.count, recipe=table.recipe}
  return true
end

local function mineEntity(table, player)
  local distance = helper.getDistance(player.position, table.param)
  if distance > 1.4 then
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
    log('mine entity')
    local entity = entities[1]
    player.update_selected_entity(entity.position)
    player.mining_state = {mining = true, position=entity.position}
    player.walking_state = {walking = false}
    return false
  end
  return true
end

return {
  craft=craft,
  pickup=pickup,
  pickupFromChest=pickupFromChest,
  fuelEntity=fuelEntity,
  mineEntity=mineEntity,
  placeEntity=placeEntity,
  fuelEntityChest=fuelEntityChest,
}
