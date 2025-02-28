function puzzle_park:source/spawn_custom
function puzzle_park:source/warp_block
function puzzle_park:movement

execute as @a at @s run
  execute store result score @s global.player.yaw run data get entity @s Rotation[0]
  execute store result score @s global.player.pitch run data get entity @s Rotation[1]
