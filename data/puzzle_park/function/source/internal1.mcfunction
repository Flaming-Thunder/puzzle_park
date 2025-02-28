data modify storage puzzle_park:macro data.function_setname set from entity @s Item.components."minecraft:item_name"
execute as @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function,distance=..1] run function puzzle_park:source/warp_block/call_function_setname with storage puzzle_park:macro data
data remove storage puzzle_park:macro data
kill @s