execute as @e[type=item] at @s if entity @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function,distance=..1] run function puzzle_park:source/internal1
execute as @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function] run function puzzle_park:source/warp_block/warp with entity @s data
execute as @e[type=item] at @s if entity @e[tag=puzzle_park.block.warp_block.2,tag=puzzle_park.function,distance=..1] run function puzzle_park:source/internal2
execute as @e[tag=puzzle_park.block.warp_block.2,tag=puzzle_park.function] run function puzzle_park:source/warp_block/warp with entity @s data