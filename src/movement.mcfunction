execute as @a at @s run
  execute as @s at @s if score @s custom.player.double_jump_cooldown_timer matches 1.. run scoreboard players remove @s custom.player.double_jump_cooldown_timer 1


##   Delete Instant

execute as @e[tag=puzzle_park.delete.instant] at @s unless entity @a[distance=..2] run
  tp @s ~ ~-1000 ~
  kill @s

execute as @s unless score @s global.player.is_sneaking matches 1.. as @e[tag=puzzle_park.movement_hitbox.climb] at @s positioned ~ ~1.1 ~ unless entity @a[distance=1.2..] run
  tp @s ~ ~-1000 ~
  kill @s
execute as @s unless score @s global.player.is_sneaking matches 1.. as @e[tag=puzzle_park.movement_hitbox.crawl] at @s positioned ~ ~-1 ~ unless entity @a[distance=1.2..] run
  tp @s ~ ~-1000 ~
  kill @s

## 



execute as @s at @s if score @s global.player.is_sneaking matches 1.. positioned ~ ~1.3 ~ positioned ^ ^ ^.75 run
  execute align xyz positioned ~.5 ~.5 ~.5 run



    ##   Climb

    execute if block ~ ~ ~ air if block ~ ~1 ~ air
    + unless block ~ ~-1 ~ air
    + unless block ~ ~-1 ~ torch
    + unless block ~ ~-1 ~ soul_torch
    + unless block ~ ~-1 ~ wall_torch
    + unless block ~ ~-1 ~ soul_wall_torch
    + unless block ~ ~-1 ~ #all_signs
    + unless block ~ ~-1 ~ #wool_carpets
    + unless block ~ ~-1 ~ moss_carpet
    + unless block ~ ~-1 ~ pale_moss_carpet
    + unless block ~ ~-1 ~ #banners
    + unless block ~ ~-1 ~ #candles
    + unless block ~ ~-1 ~ #trapdoors[half=bottom]
    + unless block ~ ~-1 ~ #trapdoors[open=true]
    + unless block ~ ~-1 ~ #replaceable
    + unless block ~ ~-1 ~ #flowers
    + unless block ~ ~-1 ~ #flower_pots
    + unless block ~ ~-1 ~ #saplings
    + unless block ~ ~-1 ~ bamboo
    + unless block ~ ~-1 ~ bamboo_sapling
    + unless block ~ ~-1 ~ #crops
    + unless block ~ ~-1 ~ #beds
    + unless block ~ ~-1 ~ powered_rail
    + unless block ~ ~-1 ~ detector_rail
    + unless block ~ ~-1 ~ activator_rail
    + unless block ~ ~-1 ~ rail
    + unless block ~ ~-1 ~ redstone_wire
    + unless block ~ ~-1 ~ redstone_torch
    + unless block ~ ~-1 ~ redstone_wall_torch
    + unless block ~ ~-1 ~ repeater
    + unless block ~ ~-1 ~ comparator
    + unless block ~ ~-1 ~ tripwire_hook
    + unless block ~ ~-1 ~ tripwire
    + unless block ~ ~-1 ~ #doors
    + unless block ~ ~-1 ~ #fence_gates[open=true]
    + unless block ~ ~-1 ~ #buttons
    + unless block ~ ~-1 ~ #pressure_plates
    + unless block ~ ~-1 ~ lever
    + unless block ~ ~-1 ~ small_dripleaf
    + unless block ~ ~-1 ~ #climbable
    + positioned ~ ~-2.65 ~ unless block ~ ~ ~ air unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run

      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}

    execute if block ~ ~ ~ #stairs[half=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    execute if block ~ ~ ~ #stairs[half=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    
    execute if block ~ ~ ~ #slabs[type=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    execute if block ~ ~ ~ #slabs[type=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}

    ##  Crawl

    execute at @s if block ~ ~1 ~ air positioned ~ ~1.3 ~ positioned ^ ^ ^.75 align xyz positioned ~.5 ~.5 ~.5 if entity @s[nbt={OnGround:1b}] if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~1 ~ air positioned ~ ~.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] if entity @s[distance=..1.4] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"crawl"}
      playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 0.1 0.2

    #particle dust{color:15400704,scale:0.25} ~ ~ ~ 0 0 0 0 1 normal

  #particle dust{color:16711680,scale:0.25} ~ ~ ~ 0 0 0 0 1 normal
  
##  Double Jump

execute as @s[nbt={abilities:{flying:0b}}] at @s run
  execute as @s[tag=puzzle_park.player.double_jumped] if score @s custom.player.double_jump_timer matches 1.. run scoreboard players remove @s custom.player.double_jump_timer 1
  execute as @s[tag=puzzle_park.player.double_jumped] if score @s custom.player.double_jump_timer matches 0 run
    effect clear @s levitation
    execute as @s[nbt={OnGround:true}] unless block ~ ~-0.01 ~ air positioned ~ ~-1 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..1.2] run
      tag @s remove puzzle_park.player.double_jumped

  execute as @s[tag=!puzzle_park.player.double_jumped] at @s if block ~ ~2.5 ~ air if block ~ ~3.5 ~ air if block ~ ~-0.75 ~ air if block ~ ~-0.5 ~ air if block ~-.3 ~-0.75 ~ air if block ~.3 ~-0.75 ~ air if block ~ ~-0.75 ~-.3 air if block ~ ~-0.75 ~.3 air if block ~-.3 ~-0.75 ~-.3 air if block ~.3 ~-0.75 ~-.3 air if block ~.3 ~-0.75 ~.3 air if block ~-.3 ~-0.75 ~.3 air if score @s custom.player.double_jump_timer matches 0 if score @s custom.player.double_jump matches 1.. if score @s custom.player.double_jump_cooldown_timer matches 0 if score @s global.player.is_sneaking matches 1.. positioned ~ ~-1 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..1.5] positioned ~ ~1 ~ run

    effect give @s levitation 1 40 true
    particle dust{color:16777215,scale:1} ~ ~ ~ 0.2 0.1 0.2 0 20 normal
    playsound minecraft:entity.wind_charge.wind_burst ambient @a ~ ~ ~ 0.1 1.25 0
    scoreboard players set @s custom.player.double_jump_timer 1
    scoreboard players set @s custom.player.double_jump_cooldown_timer 5
    scoreboard players remove @s custom.player.double_jump 1
    tag @s add puzzle_park.player.double_jumped

## Charge Jump



/spawn_movement_hitbox_tiny
  $summon block_display ~ ~ ~ {Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:0.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}
  #$summon block_display ~ ~ ~ {Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"],active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:0.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}


/spawn_movement_hitbox_large
  $summon block_display ~ ~ ~ {Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:1.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}
  #$summon block_display ~ ~ ~ {Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["puzzle_park.movement_hitbox","puzzle_park.delete.instant","puzzle_park.movement_hitbox.$(Function_Tag)"],active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:1.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}
#

scoreboard players set @s global.player.is_sneaking 0