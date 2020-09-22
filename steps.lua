tasks = require('tasks')

steps = {
  {
    goal = 'First burner',
    position = {x=-32, y=32},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.placeEntity, type='burner-mining-drill', pos={x=-31, y=21}, direction=defines.direction.north, fuel='wood', count=1},
      {call=tasks.placeEntity, type='stone-furnace', pos={x=-31, y=19}, direction=defines.direction.north},
      {call=tasks.mineEntity, param={x=-21, y=22}, type="tree"},
      {call=tasks.craft, count=3, recipe='iron-gear-wheel'},
      {call=tasks.fuelEntity, type='stone-furnace', pos={x=-31, y=19}, count=2, fuel='wood'},
      {call=tasks.fuelEntity, type='burner-mining-drill', pos={x=-31, y=21}, count=2, fuel='wood'},
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
      {call=tasks.fuelEntity, type='burner-mining-drill', pos={x=-31, y=21}, count=3, fuel='coal'},
      {call=tasks.fuelEntity, type='stone-furnace', pos={x=-31, y=19}, count=3, fuel='coal'},
      {call=tasks.pickup, param='stone-furnace', pos={x=-31, y=19}},
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
      {call=tasks.placeEntity, type='burner-mining-drill', pos={x=-73, y=36}, direction=defines.direction.west, fuel='coal', count=2},
      {call=tasks.placeEntity, type='wooden-chest', pos={x=-75, y=36}, direction=defines.direction.west},
      {call=tasks.mineEntity, param={x=-68, y=33}, type="resource", limit={type="coal", count=4}},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-44, y=34},
    direction = defines.direction.east,
    tasks = {
      {call=tasks.mineEntity, param={x=-56, y=32}, type="resource", limit={type="stone", count=15}},
      {call=tasks.craft, count=3, recipe='stone-furnace'},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-36, y=25},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.pickup, param='stone-furnace', pos={x=-31, y=19}},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
      {call=tasks.craft, count=1, recipe='burner-mining-drill'},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-49, y=38},
    direction = defines.direction.southwest,
    tasks = {
      {call=tasks.placeEntity, type='stone-furnace', pos={x=-33, y=19}, direction=defines.direction.north, fuel='coal', count=2},
    }
  },
  {
    goal = 'Stone drill',
    position = {x=-71, y=37},
    direction = defines.direction.west,
    tasks = {
      {call=tasks.placeEntity, type='burner-mining-drill', pos={x=-56, y=39}, direction=defines.direction.west, fuel='coal', count=2},
      {call=tasks.placeEntity, type='wooden-chest', pos={x=-58, y=39}, direction=defines.direction.west},
      {call=tasks.pickup, param='wooden-chest', pos={x=-74, y=36}},
    }
  },
  {
    goal = '2nd iron miner',
    position = {x=-44, y=37},
    direction = defines.direction.east,
  },
  {
    goal = '2nd iron miner',
    position = {x=-36, y=25},
    direction = defines.direction.northeast,
    tasks = {
      {call=tasks.pickup, param='stone-furnace', pos={x=-31, y=19}},
      {call=tasks.placeEntity, type='burner-mining-drill', pos={x=-33, y=21}, direction=defines.direction.west, fuel='coal', count=2},
    }
  },
}

return steps
