-- Expecting to be at x=-18, y=16 with empty inventory

local tasks = require('tasks')
local structures = require('structures')

local steps = {
  {
    goal = 'Next',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
    },
  },
  {
    goal = 'Next',
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
    goal = 'Next',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Next',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.lab[1], count=2, fuel='automation-science-pack'},
    }
  },
}


return steps
