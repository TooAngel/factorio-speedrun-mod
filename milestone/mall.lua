-- Expecting to be at x=-18, y=16 with empty inventory

local tasks = require('tasks')
local structures = require('structures')

local steps = {
  {
    goal = 'Wood',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
    },
  },
  {
    goal = 'Wood',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[4], count=1, fuel='coal'},
    }
  },
  {
    goal = 'Wood',
    position = {x=-70, y=16},
    direction = defines.direction.north,
    tasks = {
      {call=tasks.mineEntity, param={x=-70, y=29}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=28}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=27}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=26}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=25}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=24}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=23}, type="tree"},
      -- {call=tasks.mineEntity, param={x=-70, y=22}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=21}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=20}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=19}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=18}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=17}, type="tree"},
    }
  },
  {
    goal = 'Next',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5], count=1, fuel='coal'},
      -- {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.fuelEntity, structure=structures.lab[1], count=2, fuel='automation-science-pack'},
    }
  },

}


return steps
