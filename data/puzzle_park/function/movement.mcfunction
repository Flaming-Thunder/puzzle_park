execute as @a at @s run function puzzle_park:movement/internal0
execute as @e[tag=puzzle_park.delete.instant] at @s unless entity @a[distance=..2] run function puzzle_park:movement/internal1
execute as @s unless score @s global.player.is_sneaking matches 1.. as @e[tag=puzzle_park.movement_hitbox.climb] at @s positioned ~ ~1.1 ~ unless entity @a[distance=1.2..] run function puzzle_park:movement/internal2
execute as @s unless score @s global.player.is_sneaking matches 1.. as @e[tag=puzzle_park.movement_hitbox.crawl] at @s positioned ~ ~-1 ~ unless entity @a[distance=1.2..] run function puzzle_park:movement/internal3
execute as @s at @s if score @s global.player.is_sneaking matches 1.. positioned ~ ~1.3 ~ positioned ^ ^ ^.75 run function puzzle_park:movement/internal4
execute as @s[nbt={abilities:{flying:0b}}] at @s run function puzzle_park:movement/internal12
scoreboard players set @s global.player.is_sneaking 0