doubleMap = (map, random) ->
  dmap = []
  drow = []

  for mapRow, y in map[..-2]
    nextRow = map[y + 1]

    for mapCell, x in mapRow[..-2]
      drow.push mapCell

      diamond = ( x + mapRow[x + 1] +
                  map[y + 1][x] + map[y + 1][x + 1]
                ) / 4 + random()

      #...

      nextCell = x


makeMap = (divisions, random) ->
  map = [ [0, 0]
          [0, 0] ]

  while divisions--
    doubleMap map

  map
