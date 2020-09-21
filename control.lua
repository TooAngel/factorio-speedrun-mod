script.on_init(function()

	-- removed crashsite and cutscene start, so on_player_created inventory safe
	remote.call("freeplay", "set_disable_crashsite", true)

	-- Skips popup message to press tab to start playing
	remote.call("freeplay", "set_skip_intro", true)
end)

local function getFromInventory(table, args)
  player = args.player
  if not player then
    return false
  end
  if not player.get_main_inventory then
    return false
  end
  inventory = player.get_main_inventory()
  for i = 1, #inventory do
    if not inventory[i] then
      goto continue
    end
    if not inventory[i].valid_for_read then
      goto continue
    end
    log(inventory[i].name)
    log(args.param)
    if inventory[i].name == args.param then
      return player.cursor_stack.transfer_stack(inventory[i])
    end
    ::continue::
  end
end

local function placeFromCursor(table, args)
  player = args.player
  position = args.param
  distance = math.sqrt(math.pow(player.position.x - position.x, 2) + math.pow(player.position.y - position.y, 2))
  if distance < 10 then
    response = player.build_from_cursor{position={position.x, position.y}, direction=defines.direction.north}
    return true
  end
end

steps = {
  {
    goal = 'First burner',
    position = {
      x = -25,
      y = 25
    },
    direction = defines.direction.southwest,
    tasks = {
      {call=getFromInventory, param='burner-mining-drill'},
      {call=placeFromCursor, param={x=-31, y=21}},
      {call=getFromInventory, param='wood'},
    }
  },
  {
    goal = 'Wood',
    position = {x=-22, y=34},
    direction = defines.direction.south,
  }
}

function walk(player)
  if math.abs(player.position.x - steps[1].position.x) < 1 and math.abs(player.position.y - steps[1].position.y) < 1 then
    table.remove(steps, 1)
    player.set_goal_description(steps[1].goal)
  end
  game.players[1].walking_state = {walking = true, direction = steps[1].direction}
end

function executeTask(player)
  if not steps[1].tasks then
    return false
  end
  task = steps[1].tasks[1]
  if not task then
    return false
  end
  if task:call({player=player, param=task.param}) then
    table.remove(steps[1].tasks, 1)
  end
end

script.on_event(defines.events.on_tick,
  function(event)
    if event.tick == 1 then
      player.set_goal_description(steps[1].goal)
      --player.print("I'm here")
    end
    player = game.players[1]
    walk(player)
    executeTask(player)

    --log(string.format("%d: %d %d", event.tick, player.position.x, player.position.y))

    --[[
    if player.position.x > -35 and player.position.y < 21 then
      game.players[1].walking_state = {walking = true, direction = defines.direction.southwest}
    else
      player.build_from_cursor{position={-31, 21}, direction=defines.direction.north}
    end


    if event.tick == 200 then
      player.print(500)
    -- game.players[1].walking_state = {walking = true, direction = defines.direction.north}
    -- game.show_message_dialog{text = "Oh boy!"}
    end
    --]]
  end
)
