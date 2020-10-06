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
    coal = {
      {type='electric-mining-drill', pos={x=-73, y=33}, direction=defines.direction.east, entity='electric-mining-drill'},
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
      {type='stone-furnace', pos={x=-14, y=12}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-14, y=10}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-14, y=8}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-14, y=6}, direction=defines.direction.south, entity='stone-furnace'},
      {type='stone-furnace', pos={x=-14, y=4}, direction=defines.direction.south, entity='stone-furnace'},
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
    iron = {
      {type='container', pos={x=-10, y=12}, direction=defines.direction.west, entity='wooden-chest'},
    },
    assembler = {
      {type='container', pos={x=-9, y=18}, direction=defines.direction.west, entity='wooden-chest'},
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
    {type='small-electric-pole', pos={x=9, y=16}, direction=defines.direction.south, entity='small-electric-pole'}, -- 5
    {type='small-electric-pole', pos={x=2, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-5, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-12, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-19, y=16}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-20, y=21}, direction=defines.direction.south, entity='small-electric-pole'}, -- 10
    {type='small-electric-pole', pos={x=-22, y=25}, direction=defines.direction.south, entity='small-electric-pole'},
    -- melter
    {type='small-electric-pole', pos={x=-13, y=4}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-16, y=4}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-16, y=8}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-16, y=12}, direction=defines.direction.south, entity='small-electric-pole'}, -- 15

    {type='small-electric-pole', pos={x=-13, y=8}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-13, y=12}, direction=defines.direction.south, entity='small-electric-pole'},

    -- to coal
    {type='small-electric-pole', pos={x=-28, y=25}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-33, y=30}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-38, y=35}, direction=defines.direction.south, entity='small-electric-pole'}, -- 20
    {type='small-electric-pole', pos={x=-45, y=35}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-52, y=35}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-59, y=35}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-66, y=35}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-70, y=32}, direction=defines.direction.south, entity='small-electric-pole'}, -- 25

    -- assemberler
    {type='small-electric-pole', pos={x=-7, y=19}, direction=defines.direction.south, entity='small-electric-pole'},
    {type='small-electric-pole', pos={x=-9, y=13}, direction=defines.direction.south, entity='small-electric-pole'},

  },
  inserter = {
    {type='inserter', pos={x=-24, y=25}, direction=defines.direction.east, entity='inserter'},
    {type='inserter', pos={x=-24, y=24}, direction=defines.direction.west, entity='inserter'},
    -- melter
    {type='inserter', pos={x=-16, y=3}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-13, y=3}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-11, y=12}, direction=defines.direction.west, entity='inserter'}, -- 5

    {type='inserter', pos={x=-16, y=6}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-13, y=6}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-16, y=7}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-13, y=7}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-16, y=10}, direction=defines.direction.west, entity='inserter'}, -- 10
    {type='inserter', pos={x=-13, y=10}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-16, y=11}, direction=defines.direction.west, entity='inserter'},
    {type='inserter', pos={x=-13, y=11}, direction=defines.direction.west, entity='inserter'},

    -- asemmblers
    {type='inserter', pos={x=-14, y=18}, direction=defines.direction.east, entity='inserter'},
    {type='inserter', pos={x=-10, y=18}, direction=defines.direction.east, entity='inserter'}, -- 15
    {type='inserter', pos={x=-9, y=17}, direction=defines.direction.north, entity='inserter'},
    {type='inserter', pos={x=-10, y=13}, direction=defines.direction.north, entity='inserter'},
  },
  transportBelt = {
    iron = {
      {type='transport-belt', pos={x=-25, y=27}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=26}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=25}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=24}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=23}, direction=defines.direction.north, entity='transport-belt'}, -- 5
      {type='transport-belt', pos={x=-25, y=22}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=21}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=20}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=19}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=18}, direction=defines.direction.north, entity='transport-belt'}, -- 10
      {type='transport-belt', pos={x=-25, y=17}, direction=defines.direction.north, entity='transport-belt'},
      -- melter
      {type='transport-belt', pos={x=-17, y=12}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=11}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=10}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=9}, direction=defines.direction.north, entity='transport-belt'}, -- 15
      {type='transport-belt', pos={x=-17, y=8}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=7}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=6}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=5}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=4}, direction=defines.direction.north, entity='transport-belt'}, -- 20
      {type='transport-belt', pos={x=-17, y=3}, direction=defines.direction.north, entity='transport-belt'},

      {type='transport-belt', pos={x=-12, y=3}, direction=defines.direction.south, entity='transport-belt'},

      {type='transport-belt', pos={x=-17, y=13}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-17, y=14}, direction=defines.direction.north, entity='transport-belt'},

      {type='transport-belt', pos={x=-18, y=14}, direction=defines.direction.east, entity='transport-belt'}, -- 25
      {type='transport-belt', pos={x=-19, y=14}, direction=defines.direction.east, entity='transport-belt'},
      {type='transport-belt', pos={x=-20, y=14}, direction=defines.direction.east, entity='transport-belt'},
      {type='transport-belt', pos={x=-21, y=14}, direction=defines.direction.east, entity='transport-belt'},
      {type='transport-belt', pos={x=-22, y=14}, direction=defines.direction.east, entity='transport-belt'},
      {type='transport-belt', pos={x=-23, y=14}, direction=defines.direction.east, entity='transport-belt'}, -- 30
      {type='transport-belt', pos={x=-24, y=14}, direction=defines.direction.east, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=14}, direction=defines.direction.east, entity='transport-belt'},

      {type='transport-belt', pos={x=-25, y=17}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=16}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-25, y=15}, direction=defines.direction.north, entity='transport-belt'}, -- 35

      {type='transport-belt', pos={x=-12, y=4}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=5}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=6}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=7}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=8}, direction=defines.direction.south, entity='transport-belt'}, -- 40
      {type='transport-belt', pos={x=-12, y=9}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=10}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=11}, direction=defines.direction.south, entity='transport-belt'},
      {type='transport-belt', pos={x=-12, y=12}, direction=defines.direction.south, entity='transport-belt'},
    },
    coal = {
      {type='transport-belt', pos={x=-71, y=34}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-71, y=33}, direction=defines.direction.north, entity='transport-belt'},
      {type='transport-belt', pos={x=-71, y=32}, direction=defines.direction.north, entity='transport-belt'},
    }
  },
  lab = {
    {type='lab', pos={x=-16, y=18}, direction=defines.direction.north, entity='lab'},
  },
  assemblingMachine1 = {
    {type='assembling-machine-1', pos={x=-12, y=18}, direction=defines.direction.north, entity='assembling-machine-1'},
    {type='assembling-machine-1', pos={x=-9, y=15}, direction=defines.direction.north, entity='assembling-machine-1'},
  }
}

return structures
