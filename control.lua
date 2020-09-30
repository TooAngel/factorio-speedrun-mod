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
  if (not steps[1].tasks or #steps[1].tasks == 0) and math.abs(player.position.x - steps[1].position.x) < 1 and math.abs(player.position.y - steps[1].position.y) < 1 then
    table.remove(steps, 1)
    if not steps or #steps == 0 then
      return
    end
    if player.get_goal_description() ~= steps[1].goal then
      player.set_goal_description(steps[1].goal)
    end
  end
  player.walking_state = {walking = true, direction = steps[1].direction}
end

function executeTask(player)
  if not steps or #steps == 0 then
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
        player.set_quick_bar_slot(1, 'wood')
        player.set_quick_bar_slot(2, 'coal')
        player.set_quick_bar_slot(3, 'stone')
        player.set_quick_bar_slot(4, 'iron-plate')
        player.set_quick_bar_slot(5, 'iron-gear-wheel')
        player.set_quick_bar_slot(6, 'stone-furnace')
        player.set_quick_bar_slot(7, 'burner-mining-drill')
        player.set_quick_bar_slot(8, 'wooden-chest')
      end

      log(string.format("%d: %d %d", event.tick, player.position.x, player.position.y))
    if not steps or #steps == 0 then
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
