function puzzle_park:source/spawn_custom
function puzzle_park:source/custom_block/tags/physical
function puzzle_park:source/custom_block/hanging_bar
function puzzle_park:source/custom_block/wire
function puzzle_park:source/custom_block/order_table
execute as @a at @s run function puzzle_park:movement
execute as @a at @s run function puzzle_park:tick/internal0