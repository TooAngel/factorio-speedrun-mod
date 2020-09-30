local structures = {
  burnerMiningDrill = {
    coal = {
      {type='burner-mining-drill', pos={x=-73, y=36}, direction=defines.direction.west, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-74, y=38}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-76, y=37}, direction=defines.direction.east, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-75, y=35}, direction=defines.direction.south, entity='burner-mining-drill'},
    },
    stone = {
      {type='burner-mining-drill', pos={x=-56, y=39}, direction=defines.direction.west, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-57, y=41}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-59, y=40}, direction=defines.direction.east, entity='burner-mining-drill'},
    },
    iron = {
      {type='burner-mining-drill', pos={x=-31, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-33, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-35, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-37, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-39, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-41, y=21}, direction=defines.direction.north, entity='burner-mining-drill'},
    },
    copper = {
      {type='burner-mining-drill', pos={x=-34, y=11}, direction=defines.direction.south, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-32, y=11}, direction=defines.direction.south, entity='burner-mining-drill'},
      {type='burner-mining-drill', pos={x=-30, y=11}, direction=defines.direction.south, entity='burner-mining-drill'},
    },
  },
  stoneFurnace = {
    iron = {
      {type='stone-furnace', pos={x=-31, y=19}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-33, y=19}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-35, y=19}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-37, y=19}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-39, y=19}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-41, y=19}, direction=defines.direction.south, entity='stone-furnace'},
    },
    copper = {
      {type='stone-furnace', pos={x=-34, y=13}, direction=defines.direction.north, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-32, y=13}, direction=defines.direction.north, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-30, y=13}, direction=defines.direction.north, entity='stone-furnace'},
    },
  },
  chest = {
    stone = {
      {type='container', pos={x=-58, y=39}, direction=defines.direction.west, entity='wooden-chest'},
    },
    coal = {
      {type='container', pos={x=-75, y=36}, direction=defines.direction.west, entity='wooden-chest'},
    }
  },
}

return structures
