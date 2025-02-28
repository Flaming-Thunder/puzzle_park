


##   Delete Instant

execute as @e[tag=delete.instant] at @s unless entity @a[distance=..2] run
  tp @s ~ ~-1000 ~
  kill @s

execute as @a unless score @s global.player.is_sneaking matches 1.. as @e[tag=movement_hitbox.climb] at @s positioned ~ ~1.1 ~ unless entity @a[distance=1.2..] run
  tp @s ~ ~-1000 ~
  kill @s
execute as @a unless score @s global.player.is_sneaking matches 1.. as @e[tag=movement_hitbox.crawl] at @s positioned ~ ~-1 ~ unless entity @a[distance=1.2..] run
  tp @s ~ ~-1000 ~
  kill @s



execute as @a at @s if score @s global.player.is_sneaking matches 1.. positioned ~ ~1.3 ~ positioned ^ ^ ^.75 run
  execute align xyz positioned ~.5 ~.5 ~.5 run



    ##   Climb

    execute if block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~-1 ~ air positioned ~ ~-2.65 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}

    execute if block ~ ~ ~ #stairs[half=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    execute if block ~ ~ ~ #stairs[half=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    
    execute if block ~ ~ ~ #slabs[type=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}
    execute if block ~ ~ ~ #slabs[type=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"climb"}



    ##  Crawl

    execute if entity @s[nbt={OnGround:1b}] if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~1 ~ air positioned ~ ~.5 ~ unless entity @e[tag=movement_hitbox,distance=..0.1] if entity @s[distance=..1.4] run
      function puzzle_park:movement/spawn_movement_hitbox_large {Function_Tag:"crawl"}
      playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 0.1 0.2

    #particle dust{color:15400704,scale:0.25} ~ ~ ~ 0 0 0 0 1 normal

  #particle dust{color:16711680,scale:0.25} ~ ~ ~ 0 0 0 0 1 normal
  scoreboard players set @s global.player.is_sneaking 0





/spawn_movement_hitbox_tiny
  #$summon block_display ~ ~ ~ {Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:0.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}
  $summon block_display ~ ~ ~ {Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"],active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:0.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}


/spawn_movement_hitbox_large
  #$summon block_display ~ ~ ~ {Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"],active_effects:[{id:"invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:1.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}
  $summon block_display ~ ~ ~ {Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"], Passengers:[{id:shulker,Tags:["movement_hitbox","delete.instant","movement_hitbox.$(Function_Tag)"],active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:10,show_particles:false}],attributes:[{base:1.01,id:"minecraft:scale"}],NoAI:true,Silent:true}]}