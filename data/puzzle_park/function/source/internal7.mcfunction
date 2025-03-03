execute as @e[tag=puzzle_park,tag=puzzle_park.block.hanging_bar.display] at @s if entity @a[distance=20..25] run function puzzle_park:source/internal8
execute as @e[tag=puzzle_park,tag=puzzle_park.block.hanging_bar.display] at @s unless entity @a[distance=20..] run function puzzle_park:source/internal9
execute as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ air positioned ~ ~1 ~ if entity @e[tag=puzzle_park.block.hanging_bar,distance=..0.45] run function puzzle_park:source/internal10
function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~.25 ~ ~",Axis:"x"}
function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~-.25 ~ ~",Axis:"x"}
function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~ ~ ~.25",Axis:"z"}
function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~ ~ ~-.25",Axis:"z"}
execute as @a at @s positioned ~ ~2 ~ unless entity @e[tag=puzzle_park.block.hanging_bar,distance=..0.8] if entity @e[tag=puzzle_park.block.hanging_bar,distance=..2] run function puzzle_park:source/internal13