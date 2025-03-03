execute if block ~ ~ ~ air if block ~ ~1 ~ air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ torch unless block ~ ~-1 ~ soul_torch unless block ~ ~-1 ~ wall_torch unless block ~ ~-1 ~ soul_wall_torch unless block ~ ~-1 ~ #all_signs unless block ~ ~-1 ~ #wool_carpets unless block ~ ~-1 ~ moss_carpet unless block ~ ~-1 ~ pale_moss_carpet unless block ~ ~-1 ~ #banners unless block ~ ~-1 ~ #candles unless block ~ ~-1 ~ #trapdoors[half=bottom] unless block ~ ~-1 ~ #trapdoors[open=true] unless block ~ ~-1 ~ #replaceable unless block ~ ~-1 ~ #flowers unless block ~ ~-1 ~ #flower_pots unless block ~ ~-1 ~ #saplings unless block ~ ~-1 ~ bamboo unless block ~ ~-1 ~ bamboo_sapling unless block ~ ~-1 ~ #crops unless block ~ ~-1 ~ #beds unless block ~ ~-1 ~ powered_rail unless block ~ ~-1 ~ detector_rail unless block ~ ~-1 ~ activator_rail unless block ~ ~-1 ~ rail unless block ~ ~-1 ~ redstone_wire unless block ~ ~-1 ~ redstone_torch unless block ~ ~-1 ~ redstone_wall_torch unless block ~ ~-1 ~ repeater unless block ~ ~-1 ~ comparator unless block ~ ~-1 ~ tripwire_hook unless block ~ ~-1 ~ tripwire unless block ~ ~-1 ~ #doors unless block ~ ~-1 ~ #fence_gates[open=true] unless block ~ ~-1 ~ #buttons unless block ~ ~-1 ~ #pressure_plates unless block ~ ~-1 ~ lever unless block ~ ~-1 ~ small_dripleaf unless block ~ ~-1 ~ #climbable positioned ~ ~-2.65 ~ unless block ~ ~ ~ air unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run function puzzle_park:movement/internal6
execute if block ~ ~ ~ #stairs[half=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run function puzzle_park:movement/internal7
execute if block ~ ~ ~ #stairs[half=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run function puzzle_park:movement/internal8
execute if block ~ ~ ~ #slabs[type=top] unless block ~ ~-1 ~ air positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run function puzzle_park:movement/internal9
execute if block ~ ~ ~ #slabs[type=bottom] positioned ~ ~-2.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] run function puzzle_park:movement/internal10
execute at @s if block ~ ~1 ~ air positioned ~ ~1.3 ~ positioned ^ ^ ^.75 align xyz positioned ~.5 ~.5 ~.5 if entity @s[nbt={OnGround:1b}] if block ~ ~ ~ air unless block ~ ~-1 ~ air unless block ~ ~1 ~ air positioned ~ ~.5 ~ unless entity @e[tag=puzzle_park.movement_hitbox,distance=..0.1] if entity @s[distance=..1.4] run function puzzle_park:movement/internal11