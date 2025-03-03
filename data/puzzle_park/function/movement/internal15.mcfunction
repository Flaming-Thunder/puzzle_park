effect give @s levitation 1 40 true
particle dust{color:16777215,scale:1} ~ ~ ~ 0.2 0.1 0.2 0 20 normal
playsound minecraft:entity.wind_charge.wind_burst ambient @a ~ ~ ~ 0.1 1.25 0
scoreboard players set @s custom.player.double_jump_timer 1
scoreboard players set @s custom.player.double_jump_cooldown_timer 5
scoreboard players remove @s custom.player.double_jump 1
tag @s add puzzle_park.player.double_jumped