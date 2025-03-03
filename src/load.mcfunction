tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n------------- Reload Complete! ------------- \n\n\n\n\n","color": "yellow"}]
#

#scoreboard objectives add settings.double_jump.power dummy
#scoreboard objectives add settings.double_jump.max dummy

scoreboard objectives remove game.ffi.rolls

scoreboard objectives remove global.player.facing-pitch
scoreboard objectives remove global.player.facing-simple
scoreboard objectives remove global.player.facing-omni

scoreboard objectives remove global.player.is_sneaking
scoreboard objectives remove global.player.move_sprinting
scoreboard objectives remove global.player.move_walking
scoreboard objectives remove global.player.move_sneaking
scoreboard objectives remove global.player.move_jump
scoreboard objectives remove global.player.yaw
scoreboard objectives remove global.player.pitch
scoreboard objectives remove custom.player.double_jump
scoreboard objectives remove custom.player.double_jump_timer
scoreboard objectives remove custom.player.double_jump_cooldown_timer
scoreboard objectives remove custom.player.power_jump

#----------------------------------------------------------------------------------

scoreboard objectives add game.ffi.rolls dummy

scoreboard objectives add client.block.wire.timer dummy

scoreboard objectives add global.player.facing-pitch dummy
scoreboard objectives add global.player.facing-simple dummy
scoreboard objectives add global.player.facing-omni dummy

scoreboard objectives add global.player.is_sneaking minecraft.custom:sneak_time
scoreboard objectives add global.player.move_sprinting minecraft.custom:sprint_one_cm
scoreboard objectives add global.player.move_walking minecraft.custom:walk_one_cm
scoreboard objectives add global.player.move_sneaking minecraft.custom:crouch_one_cm
scoreboard objectives add global.player.move_jump minecraft.custom:jump
scoreboard objectives add global.player.yaw dummy
scoreboard objectives add global.player.pitch dummy

scoreboard objectives add custom.player.double_jump dummy
scoreboard objectives add custom.player.double_jump_timer dummy
scoreboard objectives add custom.player.double_jump_cooldown_timer dummy
scoreboard objectives add custom.player.power_jump dummy

#----

scoreboard players add @a global.player.is_sneaking 0

scoreboard players add @a custom.player.double_jump 0
scoreboard players add @a custom.player.double_jump_timer 0
scoreboard players add @a custom.player.double_jump_cooldown_timer 0
scoreboard players add @a custom.player.double_jump 1000
