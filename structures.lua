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
  electricMiningDrill = {
    iron = {
      {type='electric-mining-drill', pos={x=-23, y=27}, direction=defines.direction.west, entity='electric-mining-drill'},
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
      {type='stone-furnace', pos={x=-22, y=24}, direction=defines.direction.south, entity='stone-furnace'},
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
      {type='container', pos={x=-23, y=25}, direction=defines.direction.west, entity='wooden-chest'},
    },
  },
  offshorePump = {
    {type='offshore-pump', pos={x=30, y=17}, direction=defines.direction.east, entity='offshore-pump'},
  },
  boiler = {
    {type='boiler', pos={x=28, y=18}, direction=defines.direction.south, entity='boiler'},
  },
  steamEngine = {
    {type='steam-engine', pos={x=28, y=21}, direction=defines.direction.south, entity='steam-engine'},
  },
  smallElectricPole = {
    {type='small-electric-pole', pos={x=29, y=24}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=30, y=18}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=23, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=16, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=9, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=2, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-5, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-12, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-19, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-20, y=21}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-22, y=25}, direction=defines.direction.south, entity='small-electric-pole'},
  },
  inserter = {
    {type='inserter', pos={x=-24, y=25}, direction=defines.direction.east, entity='inserter'},
    {type='inserter', pos={x=-24, y=24}, direction=defines.direction.west, entity='inserter'},
  },
  transportBelt = {
    iron = {
      {type='transport-belt', pos={x=-25, y=27}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=26}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=25}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=24}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=23}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=22}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=21}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=20}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=19}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=18}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=17}, direction=defines.direction.north, entity='transport-belt'},
    }
  },
  lab = {
    {type='lab', pos={x=-16, y=18}, direction=defines.direction.north, entity='lab'},
  },
}

return structures
