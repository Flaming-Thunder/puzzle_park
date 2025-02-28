data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[0]
function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[1]
function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[2]
function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
data remove storage puzzle_park:macro data
kill @s