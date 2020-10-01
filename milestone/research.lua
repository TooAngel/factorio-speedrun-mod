local tasks = require('tasks')
local structures = require('structures')

local steps = {
  {
    goal = 'First burner',
    position = {x=-32, y=32},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='wood'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.mineEntity, param={x=-21, y=22}, type="tree"},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=2, fuel='wood'},
      {call=tasks.fuelEntity, structure=structures.stoneFurnace.iron[1], count=2, fuel='wood'},
    }
  },
  {
    goal = 'Stone & Coal',
    position = {x=-73, y=31},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.mineEntity, param={x=-56, y=32}, type="resource", limit={type="stone", count=5}},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.mineEntity, param={x=-61, y=30}, type="tree"},
      {call=tasks.mineEntity, param={x=-65, y=30}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=32}, type="tree"},
      {call=tasks.mineEntity, param={x=-68, y=30}, type="tree"},
      {call=tasks.craft, count=2, recipe='wooden-chest'},
      {call=tasks.mineEntity, param={x=-73, y=31}, type="resource", limit={type="coal", count=8}},
    }
  },
  {
    goal = 'Back',
    position = {x=-44, y=32},
    direction = defines.direction.east,
  },
  {
    goal = 'Fill and pickup',
    position = {x=-36, y=22},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=3, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.stoneFurnace.iron[1], count=3, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = 'Coal drill',
    position = {x=-49, y=35},
    direction = defines.direction.southwest,
  },
  {
    goal = 'Coal drill',
    position = {x=-71, y=34},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.coal[1], fuel='coal', count=2},
      {call=tasks.placeEntity, structure=structures.chest.coal[1], direction=defines.direction.west},
      {call=tasks.mineEntity, param={x=-68, y=33}, type="resource", limit={type="coal", count=4}},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-43, y=34},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.mineEntity, param={x=-56, y=32}, type="resource", limit={type="stone", count=15}},
      {call=tasks.craft, count=3, recipe='stone-furnace'},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-33, y=23},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-49, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[2], fuel='coal', count=2},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-71, y=38},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.stone[1], fuel='coal', count=2},
      {call=tasks.placeEntity, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = '2nd iron miner',
    position = {x=-44, y=38},
    direction = defines.direction.east,
  },
  {
    goal = '2nd iron miner',
    position = {x=-33, y=25},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[2], fuel='coal', count=2},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.stoneFurnace.iron[1], count=2, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.stoneFurnace.iron[2], count=2, fuel='coal'},
    }
  },
  {
    goal = 'Get resources',
    position = {x=-46, y=38},
    direction = defines.direction.southwest,
    tasks = {
    }
  },
  {
    goal = 'Get resources',
    position = {x=-72, y=38},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=2, fuel='coal'},
    }
  },
  {
    goal = 'Some wood',
    position = {x=-72, y=44},
    direction = defines.direction.south,
    tasks = {
      {call=tasks.mineEntity, param={x=-72, y=43}, type="tree"},
    }
  },
  {
    goal = 'Some wood',
    position = {x=-51, y=43},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.mineEntity, param={x=-69, y=43}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=43}, type="tree"},
      {call=tasks.mineEntity, param={x=-64, y=44}, type="tree"},
      {call=tasks.mineEntity, param={x=-65, y=43}, type="tree"},
      {call=tasks.mineEntity, param={x=-66, y=44}, type="tree"},
      {call=tasks.mineEntity, param={x=-67, y=45}, type="tree"},
    }
  },
  {
    goal = 'Get stone and iron',
    position = {x=-33, y=25},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1], limit={type="stone", count=5}},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
    }
  },
  {
    goal = '2nd stone drill',
    position = {x=-46, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '2nd stone drill',
    position = {x=-72, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
    }
  },
  {
    goal = '2nd stone drill',
    position = {x=-46, y=37},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.stone[2], count=2, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
    }
  },
  {
    goal = '3rd iron combi',
    position = {x=-33, y=23},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], limit={type="iron-plate", count=6}},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], limit={type="iron-plate", count=3}},
    }
  },
  {
    goal = '3rd iron combi',
    position = {x=-46, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '3rd iron combi',
    position = {x=-72, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1], limit={type="coal", count=5}},
    }
  },
  {
    goal = '3rd iron combi',
    position = {x=-46, y=37},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1], limit={type="stone", count=5}},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
    }
  },
  {
    goal = '2nd coal',
    position = {x=-33, y=23},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], limit={type="iron-plate", count=6}},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], limit={type="iron-plate", count=9}},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = '2nd coal',
    position = {x=-46, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '2nd coal',
    position = {x=-72, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.coal[2], count=2, fuel='coal'},
    }
  },
  {
    goal = '1st Copper',
    position = {x=-46, y=37},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1], limit={type="stone", count=5}},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
    }
  },
  {
    goal = '1st Copper',
    position = {x=-33, y=23},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], limit={type="iron-plate", count=3}},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], limit={type="iron-plate", count=6}},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], limit={type="iron-plate", count=6}},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
    }
  },
  {
    goal = '1st Copper',
    position = {x=-46, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '1st Copper',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = '1st Copper',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '1st Copper',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.copper[1], count=2, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.copper[1], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = '3rd Coal',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '3rd Coal',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.coal[3], count=2, fuel='coal'},
    }
  },
  {
    goal = '3rd Stone',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '3rd Stone',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = '3rd Stone',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '3rd Stone',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = '3rd Stone',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '3rd Stone',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = '3rd Stone',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '3rd Stone',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.stone[3], count=2, fuel='coal'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = '4th Iron',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '4th Iron',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[4], count=2, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[4], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
      {call=tasks.craft, count=2, recipe='offshore-pump'},
    }
  },
  {
    goal = '5th Iron',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '5th Iron',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.craft, count=2, recipe='stone-furnace'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=1, fuel='coal'},
    }
  },
  {
    goal = '5th Iron',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '5th Iron',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
    }
  },
  {
    goal = '5th Iron',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '5th Iron',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='boiler'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = '5th Iron',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '5th Iron',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[5], count=2, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[5], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.iron[4], count=1, fuel='coal'},
    }
  },
  {
    goal = '6th Iron',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '6th Iron',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=1, fuel='coal'},
    }
  },
  {
    goal = '6th Iron',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '6th Iron',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.iron[6], count=2, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[6], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
    }
  },
  {
    goal = '4th Coal',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '4th Coal',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.coal[4], count=2, fuel='coal'},
      {call=tasks.craft, count=10, recipe='copper-cable'},
    }
  },
  {
    goal = 'Power',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Power',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.craft, count=1, recipe='steam-engine'},
      {call=tasks.craft, count=10, recipe='small-electric-pole'},
    }
  },
  {
    goal = 'Power',
    position = {x=25, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.placeEntity, structure=structures.offshorePump[1]},
      {call=tasks.placeEntity, structure=structures.boiler[1], count=7, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.steamEngine[1]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[1]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[2]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[3]},
    }
  },
  {
    goal = 'Power',
    position = {x=-19, y=16},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.placeEntity, structure=structures.smallElectricPole[4]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[5]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[6]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[7]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[8]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[9]},
    }
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=1, fuel='coal'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
      {call=tasks.craft, count=1, recipe='wooden-chest'},
      {call=tasks.craft, count=1, recipe='inserter'},
      {call=tasks.craft, count=2, recipe='electronic-circuit'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[3], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.coal[4], count=1, fuel='coal'},
    }
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
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
      {call=tasks.craft, count=1, recipe='electric-mining-drill'},
      {call=tasks.craft, count=7, recipe='transport-belt'},
    }
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
  },
  {
    goal = '1st Iron Electric Mining',
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
    goal = '1st Iron Electric Mining',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.copper[1], count=1, fuel='coal'},
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
      {call=tasks.craft, count=1, recipe='inserter'},
    }
  },
  {
    goal = '1st Iron Electric Mining',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.placeEntity, structure=structures.smallElectricPole[10]},
      {call=tasks.placeEntity, structure=structures.smallElectricPole[11]},
      {call=tasks.placeEntity, structure=structures.inserter[1]},
      {call=tasks.placeEntity, structure=structures.chest.coal[2]},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=10, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.electricMiningDrill.iron[1]},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[1]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[2]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[3]},
      {call=tasks.placeEntity, structure=structures.transportBelt.iron[4]},
      {call=tasks.placeEntity, structure=structures.inserter[2]},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=1, recipe='stone-furnace'},
    },
  },
  {
    goal = '2nd copper',
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
    goal = '2nd copper',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = '2nd copper',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.placeEntity, structure=structures.burnerMiningDrill.copper[2], count=2, fuel='coal'},
      {call=tasks.placeEntity, structure=structures.stoneFurnace.copper[2], count=2, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.craft, count=14, recipe='copper-cable'},
    }
  },
  {
    goal = 'Lab',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=6, fuel='coal'},
      {call=tasks.craft, count=10, recipe='iron-gear-wheel'},
    },
  },
  {
    goal = 'Lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = 'Lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Lab',
    position = {x=-18, y=16},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.copper[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[1]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[2]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[3], count=1, fuel='coal'},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[4]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[5]},
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[6]},
      {call=tasks.craft, count=1, recipe='lab'},
      {call=tasks.craft, count=4, recipe='automation-science-pack'},
    }
  },
  {
    goal = 'Lab',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=9, fuel='coal'},
    },
  },
  {
    goal = 'Lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[1], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.burnerMiningDrill.stone[3], count=1, fuel='coal'},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = 'Lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Lab',
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
      {call=tasks.placeEntity, structure=structures.lab[1]},
      {call=tasks.craft, count=6, recipe='automation-science-pack'},
    }
  },
  {
    goal = 'Lab',
    position = {x=-40, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.pickup, structure=structures.stoneFurnace.iron[7]},
      {call=tasks.fuelEntityChest, structure=structures.chest.coal[2], count=1, fuel='coal'},
      {call=tasks.fuelEntity, structure=structures.lab[1], count=1, fuel='automation-science-pack'},
    },
  },
  {
    goal = 'Lab',
    position = {x=-70, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.pickupFromChest, structure=structures.chest.stone[1]},
      {call=tasks.pickupFromChest, structure=structures.chest.coal[1]},
    }
  },
  {
    goal = 'Lab',
    position = {x=-49, y=16},
    direction = defines.direction.northeast,
  },
  {
    goal = 'Lab',
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
