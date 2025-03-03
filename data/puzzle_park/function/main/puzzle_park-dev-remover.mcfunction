playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 0.5 1.5 0
particle trial_spawner_detection ~ ~-.5 ~ 0.1 0 0.1 0 10 normal
execute as @s if block ~ ~ ~ light run setblock ~ ~ ~ air
kill @e[type=!player, distance=..0.5]
kill @s