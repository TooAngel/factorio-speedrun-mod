script.on_init(function()

	-- removed crashsite and cutscene start, so on_player_created inventory safe
	remote.call("freeplay", "set_disable_crashsite", true)

	-- Skips popup message to press tab to start playing
	remote.call("freeplay", "set_skip_intro", true)
end)

local function getFromInventory(table, player)
  if not player then
    return false
  end
  if not player.get_main_inventory then
    return false
  end
  inventory = player.get_main_inventory()
  log(string.format("getFromInventory %s", table.param))
  for i = 1, #inventory do
    if not inventory[i] then
      goto continue
    end
    if not inventory[i].valid_for_read then
      goto continue
    end
    --log(inventory[i].name)
    if inventory[i].name == table.param then
      return player.cursor_stack.transfer_stack(inventory[i])
    end
    ::continue::
  end
end

local function getDistance(first, second)
  return math.sqrt(math.pow(first.x - second.x, 2) + math.pow(first.y - second.y, 2))
end

local function placeFromCursor(table, player)
  position = table.param
  local distance = getDistance(player.position, position)
  if distance < 10 then
    log('placeFromCursor')
    response = player.build_from_cursor{position={position.x, position.y}, direction=defines.direction.north}
    return true
  end
end

local function fuelEntity(table, player)
  log(string.format("fuelEntity %s %d", table.param, table.count))
  local entity = player.surface.find_entity(table.param, table.pos)
  -- don't like this
  inserted = entity.get_fuel_inventory().insert{name=player.cursor_stack.name, count=table.count}
  if player.cursor_stack.count - table.count > 0 then
    player.get_main_inventory().insert{name=player.cursor_stack.name, count=player.cursor_stack.count - table.count}
  end
  player.cursor_stack.clear()
  return true
end

local function mineEntity(table, player)
  local distance = getDistance(player.position, table.param)
  if distance > 3 then
    return false
  end
  log(string.format("mineEntity %s", table.type))
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
    local entity = entities[1]
    return player.mine_entity(entity)
  end
end

local function craft(table, player)
  player.begin_crafting{count=table.count, recipe=table.recipe}
  return true
end

local function pickup(table, player)
  log(string.format("pickup from %s", table.param))
  local entity = player.surface.find_entity(table.param, table.pos)
  local inventory = entity.get_output_inventory()
  for i = 1, #inventory do
    if not inventory[i] then
      -- continue does not exist, return is not good, too
      return
    end
    if not inventory[i].valid_for_read then
      return
    end
    log(inventory[i].type)
    log(inventory[i].name)
    log(inventory[i].count)
    log(serpent.block(inventory[i]))
    local emptyStack = player.get_main_inventory().find_empty_stack()
    log(emptyStack)
    return emptyStack.transfer_stack(inventory[i])
  end
end

waitTimer = 0

local function wait(table, player)
  if waitTimer == 0 then
    waitTimer = table.duration
  end
  waitTimer = waitTimer - 1
  if waitTimer == 0 then
    return true
  end
  game.players[1].walking_state = {walking = false}
  return false
end

steps = {
  {
    goal = 'First burner',
    position = {x=-32, y=32},
    direction = defines.direction.southwest,
    tasks = {
      {call=getFromInventory, param='burner-mining-drill'},
      {call=placeFromCursor, param={x=-31, y=21}},
      {call=getFromInventory, param='wood'},
      {call=fuelEntity, param='burner-mining-drill', pos={x=-31, y=21}, count=1},
      {call=getFromInventory, param='stone-furnace'},
      {call=placeFromCursor, param={x=-31, y=19}},
      {call=mineEntity, param={x=-21, y=22}, type="tree"},
      {call=craft, count=3, recipe='iron-gear-wheel'},
      {call=getFromInventory, param='wood'},
      {call=fuelEntity, param='stone-furnace', pos={x=-31, y=19}, count=1},
      {call=getFromInventory, param='wood'},
      {call=fuelEntity, param='burner-mining-drill', pos={x=-31, y=21}, count=1},
    }
  },
  {
    goal = 'Stone',
    position = {x=-73, y=31},
    direction = defines.direction.west,
    tasks = {
      {call=mineEntity, param={x=-56, y=32}, type="resource", limit={type="stone", count=10}},
      {call=craft, count=2, recipe='stone-furnace'},
      {call=mineEntity, param={x=-61, y=30}, type="tree"},
      {call=mineEntity, param={x=-67, y=31}, type="tree"},
      {call=mineEntity, param={x=-66, y=32}, type="tree"},
      {call=craft, count=2, recipe='wooden-chest'},
      {call=mineEntity, param={x=-73, y=31}, type="resource", limit={type="coal", count=10}},
      -- Wait because mining is too fast
      {call=wait, duration=1000}
    }
  },
  {
    goal = 'Back',
    position = {x=-32, y=32},
    direction = defines.direction.east,
  },
  {
    goal = 'Fill',
    position = {x=-32, y=23},
    direction = defines.direction.north,
    tasks = {
      {call=getFromInventory, param='coal'},
      {call=fuelEntity, param='burner-mining-drill', pos={x=-31, y=21}, count=4},
      {call=getFromInventory, param='coal'},
      {call=fuelEntity, param='stone-furnace', pos={x=-31, y=19}, count=4},
      {call=pickup, param='stone-furnace', pos={x=-31, y=19}},
      {call=craft, count=2, recipe='burner-mining-drill'},
      {call=craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-44, y=35},
    direction = defines.direction.southwest,
  },
  {
    goal = 'Stone drill',
    position = {x=-54, y=35},
    direction = defines.direction.west,
  }
}

function walk(player)
  if math.abs(player.position.x - steps[1].position.x) < 1 and math.abs(player.position.y - steps[1].position.y) < 1 then
    table.remove(steps, 1)
    if not steps or #steps == 0 then
      return
    end
    player.set_goal_description(steps[1].goal)
  end
  game.players[1].walking_state = {walking = true, direction = steps[1].direction}
end

function executeTask(player)
  if not steps or #steps == 0then
    return
  end
  if not steps[1].tasks then
    return false
  end
  task = steps[1].tasks[1]
  if not task then
    return false
  end
  if task:call(player) then
    table.remove(steps[1].tasks, 1)
  end
end

script.on_event(defines.events.on_tick,
  function(event)
    local player = game.players[1]
    if event.tick == 1 then
      player.set_goal_description(steps[1].goal)
    end

    if not steps or #steps == 0 then
      log(string.format("%d: %d %d", event.tick, player.position.x, player.position.y))
      return
    end
    walk(player)
    executeTask(player)

  end
)
