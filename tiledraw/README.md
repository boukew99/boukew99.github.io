# recurisve tiling

tiles are a bunch of pixels grouped in a rectangle, which replace the operating size of the pixels with the tile size, thus chunking calculations. Now recursive tiling means that you tile tiles, thus increasing chunking calculations even more, until you finanally have chunck that resembles a map.

## workflow

Thus you start with just pixels, then you select a rectangle of pixels, which becomes a group or tile. Then you can draw with those tiles. Now when you make a group of those  drawn tiles, you get another bigger tile. and slowly you make your tileset, with a deeply connected tiles.
