local technologies = require('technologies')
local milestones = require('milestones')

local Bot = {
    milestone = 1,
    step = 1,
    task = 1,
    technology = 1
}
Bot.__index = Bot

function Bot:new()
    setmetatable({}, self)
    return self
end

function Bot:handleResearch(player)
    if self.technology <= #technologies and not player.force.current_research then
        player.force.add_research(technologies[self.technology])
        self.technology = self.technology + 1
    end
end

function Bot:checkTasks()
    if milestones[self.milestone] and milestones[self.milestone].steps[self.step] and
        not milestones[self.milestone].steps[self.step].tasks then
        milestones[self.milestone].steps[self.step].tasks = {}
    end
end

function Bot:logProgress(event, player)
    if self.milestone > #milestones then
        log(string.format("%d: %d %d", event.tick, player.position.x, player.position.y))
        return
    else
        log(string.format("%d: %d %d %d / %d %d / %d %d / %d", event.tick, player.position.x, player.position.y,
            self.milestone, #milestones, self.step, #milestones[self.milestone].steps, self.task,
            #milestones[self.milestone].steps[self.step].tasks))
    end
end

function Bot:hasEnded()
    if milestones[self.milestone].steps[self.step].stopHere then
        return true
    end
    return false
end

return Bot:new()
