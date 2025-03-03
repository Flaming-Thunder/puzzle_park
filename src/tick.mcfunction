function puzzle_park:source/spawn_custom
function puzzle_park:source/custom_block/tags/physical
function puzzle_park:source/custom_block/warp_block
function puzzle_park:source/custom_block/hanging_bar
function puzzle_park:source/custom_block/wire
function puzzle_park:source/custom_block/order_table


execute as @a at @s run function puzzle_park:movement

execute as @a at @s run
  execute store result score @s global.player.yaw run data get entity @s Rotation[0] 10
  execute store result score @s global.player.pitch run data get entity @s Rotation[1] 10
  #  4 Directional
  execute as @s if score @s global.player.yaw matches 1350..1800 run scoreboard players set @s global.player.facing-simple 0
  execute as @s if score @s global.player.yaw matches -1800..-1350 run scoreboard players set @s global.player.facing-simple 0
  execute as @s if score @s global.player.yaw matches -1350..-450 run scoreboard players set @s global.player.facing-simple 1
  execute as @s if score @s global.player.yaw matches -450..450 run scoreboard players set @s global.player.facing-simple 2
  execute as @s if score @s global.player.yaw matches 450..1350 run scoreboard players set @s global.player.facing-simple 3
  #  8 Directional
  execute as @s if score @s global.player.yaw matches -1800..-1575 run scoreboard players set @s global.player.facing-omni 0
  execute as @s if score @s global.player.yaw matches -1575..-1125 run scoreboard players set @s global.player.facing-omni 1
  execute as @s if score @s global.player.yaw matches -1125..-675 run scoreboard players set @s global.player.facing-omni 2
  execute as @s if score @s global.player.yaw matches -675..-225 run scoreboard players set @s global.player.facing-omni 3
  execute as @s if score @s global.player.yaw matches -225..225 run scoreboard players set @s global.player.facing-omni 4
  execute as @s if score @s global.player.yaw matches 225..675 run scoreboard players set @s global.player.facing-omni 5
  execute as @s if score @s global.player.yaw matches 675..1125 run scoreboard players set @s global.player.facing-omni 6
  execute as @s if score @s global.player.yaw matches 1125..1575 run scoreboard players set @s global.player.facing-omni 7
  execute as @s if score @s global.player.yaw matches 1575..1800 run scoreboard players set @s global.player.facing-omni 0
