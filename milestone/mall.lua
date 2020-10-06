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
      {call=tasks.craft, count=1, recipe='wooden-chest'},
      {call=tasks.craft, count=5, recipe='stone-furnace'},
      {call=tasks.craft, count=5, recipe='transport-belt'},
      {call=tasks.craft, count=10, recipe='inserter'},
      {call=tasks.craft, count=4, recipe='transport-belt'},
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
      {call=tasks.mineEntity, param={x=-70, y=22}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=21}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=20}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=19}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=18}, type="tree"},
      {call=tasks.mineEntity, param={x=-70, y=17}, type="tree"},
    }
  },
  {
    goal = 'Wood',
    position = {x=-66, y=16},
    direction = defines.direction.east,
  },
  {
    goal = 'Wood',
    position = {x=-66, y=29},
    direction = defines.direction.south,
    tasks = {
      {call=tasks.mineEntity, param={x=-66, y=17}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=18}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=19}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=20}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=21}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=22}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=23}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=24}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=25}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=26}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=27}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=28}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=29}, type="tree"},
    },
  },
  {
    goal = 'Wood',
    position = {x=-62, y=29},
    direction = defines.direction.east,
  },
  {
    goal = 'Wood',
    position = {x=-62, y=16},
    direction = defines.direction.north,
    tasks = {
      {call=tasks.mineEntity, param={x=-62, y=29}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=28}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=27}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=26}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=25}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=24}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=23}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=22}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=21}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=20}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=19}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=18}, type="tree"},
      {call=tasks.mineEntity, param={x=-62, y=17}, type="tree"},
    },
  },
  {
    goal = 'Next',
    position = {x=-17, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[6], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.lab[1], count=7, fuel='automation-science-pack'},
      {call=tasks.craft, count=4, recipe='transport-belt'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-17, y=4},
    direction = defines.direction.north,
    tasks = {

      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[8]},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[9]},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[10]},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[11]},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[12]},

      {call=tasks.placeEntity, structure=structures.transportBelt.iron[12]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[13]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[14]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[15]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[16]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[17]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[18]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[19]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[20]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[21]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[22]},

      {call=tasks.placeEntity, structure=structures.inserter[3]},
      {call=tasks.placeEntity, structure=structures.inserter[4]},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-17, y=16},
    direction = defines.direction.south,
    tasks = {
      {call=tasks.placeEntity, structure=structures.smallElectricPole[12]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[13]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[14]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[15]},

      {call=tasks.placeEntity, structure=structures.transportBelt.iron[23]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[24]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[25]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[26]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[27]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[28]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[29]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[30]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[31]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[32]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[33]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[34]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[35]},
      {call=tasks.placeEntity, structure=structures.inserter[5]},

      {call=tasks.placeEntity, structure=structures.chest.iron[1]},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-40, y=37},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.craft, count=8, recipe='inserter'},
      {call=tasks.craft, count=4, recipe='transport-belt'},
      -- {call=tasks.craft, count=2, recipe='assembling-machine-1'},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=7, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[5]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[6]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[7]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[8]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[9]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[10]},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[4], count=1, fuel='coal'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Start melter',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[6], count=2, fuel='coal'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-40, y=37},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=5, fuel='coal'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[4], count=2, fuel='coal'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Start melter',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.craft, count=2, recipe='transport-belt'},
      {call=tasks.craft, count=2, recipe='automation-science-pack'},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-18, y=4},
    direction = defines.direction.north,
    tasks = {
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[36]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[37]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[38]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[39]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[40]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[41]},

      {call=tasks.placeEntity, structure=structures.inserter[6]},
      {call=tasks.placeEntity, structure=structures.inserter[7]},
      {call=tasks.placeEntity, structure=structures.inserter[8]},
      {call=tasks.placeEntity, structure=structures.inserter[9]},
      {call=tasks.placeEntity, structure=structures.inserter[10]},
      {call=tasks.placeEntity, structure=structures.inserter[11]},
      {call=tasks.placeEntity, structure=structures.inserter[12]},
      {call=tasks.placeEntity, structure=structures.inserter[13]},

      {call=tasks.placeEntity, structure=structures.smallElectricPole[16]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[17]},
    }
  },
  {
    goal = 'Start melter',
    position = {x=-18, y=16},
    direction = defines.direction.south,
    tasks = {
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[42]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[43]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[44]},
      {call=tasks.craft, count=5, recipe='small-electric-pole'},
      {call=tasks.craft, count=2, recipe='inserter'},
      {call=tasks.craft, count=2, recipe='electric-mining-drill'},
      {call=tasks.craft, count=1, recipe='transport-belt'},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-40, y=37},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Automate lab',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.fuelEntity, structure=structures.lab[1], count=2, fuel='automation-science-pack'},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=25, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.fuelEntity, structure=structures.boiler[1], count=22, fuel='coal'},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-18, y=16},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.iron[1]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-38, y=37},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.craft, count=2, recipe='assembling-machine-1'},
      {call=tasks.craft, count=1, recipe='wooden-chest'},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[18]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[19]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.placeEntity, structure=structures.smallElectricPole[20]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[21]},
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[22]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[23]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[24]},
      {call=tasks.placeEntity, structure=structures.electricMiningDrill.coal[1]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[25]},
      {call=tasks.placeEntity, structure=structures.transportBelt.coal[1]},
      {call=tasks.placeEntity, structure=structures.transportBelt.coal[2]},
      {call=tasks.placeEntity, structure=structures.transportBelt.coal[3]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Automate lab',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[6], count=1, fuel='coal'},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-38, y=37},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=2, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = 'Automate lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Automate lab',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[5], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[6], count=1, fuel='coal'},
      {call=tasks.craft, count=20, recipe='transport-belt'},
    },
  },
  {
    goal = 'Automate lab',
    position = {x=-10, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.iron[1]},
      {call=tasks.placeEntity, structure=structures.assemblingMachine1[1], recipe='automation-science-pack'},
      {call=tasks.placeEntity, structure=structures.assemblingMachine1[2], recipe='iron-gear-wheel'},
      {call=tasks.placeEntity, structure=structures.inserter[14]},
      {call=tasks.placeEntity, structure=structures.inserter[15]},
      {call=tasks.placeEntity, structure=structures.inserter[16]},
      {call=tasks.placeEntity, structure=structures.inserter[17]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[26]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[27]},
      {call=tasks.placeEntity, structure=structures.chest.assembler[1]},
      {call=tasks.fuelEntityChest, structure=structures.chest.assembler[1], count=30, fuel='copper-plate'},
    },
  },
}


return steps
