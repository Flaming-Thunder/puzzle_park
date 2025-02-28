tellraw @a [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n------------- Reload Complete! ------------- \n\n\n\n\n","color": "yellow"}]
scoreboard objectives remove global.player.is_sneaking
scoreboard objectives remove global.player.move_sprinting
scoreboard objectives remove global.player.move_walking
scoreboard objectives remove global.player.move_sneaking
scoreboard objectives remove global.player.move_jump
scoreboard objectives remove global.player.yaw
scoreboard objectives remove global.player.pitch
scoreboard objectives add global.player.is_sneaking minecraft.custom:sneak_time
scoreboard objectives add global.player.move_sprinting minecraft.custom:sprint_one_cm
scoreboard objectives add global.player.move_walking minecraft.custom:walk_one_cm
scoreboard objectives add global.player.move_sneaking minecraft.custom:crouch_one_cm
scoreboard objectives add global.player.move_jump minecraft.custom:jump
scoreboard objectives add global.player.yaw dummy
scoreboard objectives add global.player.pitch dummy