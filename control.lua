local helper = require('helper')
local tasks = require('tasks')
local milestones = require('milestones')
local technologies = require('technologies')

script.on_init(function()
	-- removed crashsite and cutscene start, so on_player_created inventory safe
	remote.call("freeplay", "set_disable_crashsite", true)

	-- Skips popup message to press tab to start playing
	remote.call("freeplay", "set_skip_intro", true)
end)

function walk(player)
  if math.abs(player.position.x - milestones[global.milestone].steps[global.step].position.x) > 1
  or math.abs(player.position.y - milestones[global.milestone].steps[global.step].position.y) > 1 then
    player.walking_state = {walking = true, direction = milestones[global.milestone].steps[global.step].direction}
    return true
  end

  if global.task > #milestones[global.milestone].steps[global.step].tasks then
    global.step = global.step + 1
    global.task = 1
    if global.step > #milestones[global.milestone].steps then
      global.milestone = global.milestone + 1
      global.step = 1
      global.task = 1
      return false
    end
    goal = string.format("%s: %s", milestones[global.milestone].name, milestones[global.milestone].steps[global.step].goal)
    if player.get_goal_description() ~= goal then
      player.set_goal_description(goal)
    end
  end
  return true
end

function executeTask(player)
  if global.step > #milestones[global.milestone].steps then
    return
  end
  if not milestones[global.milestone].steps[global.step].tasks or global.task > #milestones[global.milestone].steps[global.step].tasks  then
    return false
  end
  task = milestones[global.milestone].steps[global.step].tasks[global.task]
  if not task then
    return false
  end
  if task:call(player) then
    global.task = global.task + 1
  end
end

function firstTick(player)
  goal = string.format("%s: %s", milestones[global.milestone].name, milestones[global.milestone].steps[global.step].goal)
  player.set_goal_description(goal)
  player.set_quick_bar_slot(1, 'wood')
  player.set_quick_bar_slot(2, 'coal')
  player.set_quick_bar_slot(3, 'stone')
  player.set_quick_bar_slot(4, 'iron-plate')
  player.set_quick_bar_slot(5, 'copper-plate')
  player.set_quick_bar_slot(6, 'iron-gear-wheel')
  player.set_quick_bar_slot(7, 'stone-furnace')
  player.set_quick_bar_slot(8, 'burner-mining-drill')
  player.set_quick_bar_slot(9, 'wooden-chest')
  player.set_quick_bar_slot(10, 'electronic-circuit')
  player.set_quick_bar_slot(11, 'offshore-pump')
  player.set_quick_bar_slot(12, 'boiler')
  player.set_quick_bar_slot(13, 'steam-engine')
  player.set_quick_bar_slot(14, 'small-electric-pole')
  player.set_quick_bar_slot(15, 'pipe')
  player.set_quick_bar_slot(16, 'transport-belt')
  player.set_quick_bar_slot(17, 'inserter')
  player.set_quick_bar_slot(18, 'copper-cable')
  player.set_quick_bar_slot(19, 'lab')
  player.set_quick_bar_slot(20, 'automation-science-pack')
  player.set_quick_bar_slot(21, 'electric-mining-drill')

end

script.on_event(defines.events.on_tick,
  function(event)
    if not global.milestone then
      global.milestone = 1
    end
    if not global.step then
      global.step = 1
    end
    if not global.task then
      global.task = 1
    end
    if not global.technology then
      global.technology = 1
    end

    local player = game.players[1]
    if event.tick == 1 then
      firstTick(player)
    end

    if global.technology <= #technologies and not  player.force.current_research then
      player.force.add_research(technologies[global.technology])
      global.technology = global.technology + 1
    end

    if milestones[global.milestone] and milestones[global.milestone].steps[global.step] and not milestones[global.milestone].steps[global.step].tasks then
      milestones[global.milestone].steps[global.step].tasks = {}
    end

    if global.milestone > #milestones then
      log(string.format("%d: %d %d", event.tick, player.position.x, player.position.y))
      return
    else
      log(string.format("%d: %d %d %d / %d %d / %d %d / %d", event.tick, player.position.x, player.position.y, global.milestone, #milestones, global.step, #milestones[global.milestone].steps, global.task, #milestones[global.milestone].steps[global.step].tasks))
    end

		if milestones[global.milestone].steps[global.step].stopHere then
			return
		end

    if walk(player) then
      executeTask(player)
    end
  end
)

script.on_event(defines.events.on_cutscene_waypoint_reached,
  function(event)
    game.players[1].exit_cutscene()
  end
)
