helper = require('helper')
tasks = require('tasks')
steps = require('steps')

script.on_init(function()
	-- removed crashsite and cutscene start, so on_player_created inventory safe
	remote.call("freeplay", "set_disable_crashsite", true)

	-- Skips popup message to press tab to start playing
	remote.call("freeplay", "set_skip_intro", true)
end)

function walk(player)
  if global.task > #steps[global.step].tasks
  and math.abs(player.position.x - steps[global.step].position.x) < 1
  and math.abs(player.position.y - steps[global.step].position.y) < 1 then
    global.step = global.step + 1
    global.task = 1
    if global.step > #steps then
      return
    end
    if player.get_goal_description() ~= steps[global.step].goal then
      player.set_goal_description(steps[global.step].goal)
    end
  end
  player.walking_state = {walking = true, direction = steps[global.step].direction}
end

function executeTask(player)
  if global.step > #steps then
    return
  end
  if not steps[global.step].tasks or global.task > #steps[global.step].tasks  then
    return false
  end
  task = steps[global.step].tasks[global.task]
  if not task then
    return false
  end
  if task:call(player) then
    global.task = global.task + 1
  end
end

script.on_event(defines.events.on_tick,
  function(event)
    if not global.step then
      global.step = 1
    end
    if not global.task then
      global.task = 1
    end
    if not steps[global.step].tasks then
      steps[global.step].tasks = {}
    end

    local player = game.players[1]
    if event.tick == 1 then
      player.set_goal_description(steps[1].goal)
      player.set_quick_bar_slot(1, 'wood')
      player.set_quick_bar_slot(2, 'coal')
      player.set_quick_bar_slot(3, 'stone')
      player.set_quick_bar_slot(4, 'iron-plate')
      player.set_quick_bar_slot(5, 'iron-gear-wheel')
      player.set_quick_bar_slot(6, 'stone-furnace')
      player.set_quick_bar_slot(7, 'burner-mining-drill')
      player.set_quick_bar_slot(8, 'wooden-chest')
    end

    log(string.format("%d: %d %d %d / %d %d / %d", event.tick, player.position.x, player.position.y, global.step, #steps, global.task, #steps[global.step].tasks))
    if global.step > #steps then
      return
    end
    walk(player)
    executeTask(player)
  end
)

script.on_event(defines.events.on_cutscene_waypoint_reached,
  function(event)
    game.players[1].exit_cutscene()
  end
)
