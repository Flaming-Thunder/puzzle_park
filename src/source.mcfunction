/spawn_custom
  execute as @e[tag=puzzle_park, tag=puzzle_park.spawn_custom, type=minecraft:marker] at @s run
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[0]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[1]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[2]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data remove storage puzzle_park:macro data
    kill @s
  /call_function_spawn
    $execute align xyz positioned ~.5 ~.5 ~.5 run function puzzle_park:main/$(function_spawn)
    #$say $(function_spawn)

##

/warp_block
  execute as @e[type=item] at @s if entity @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function,distance=..1] run
    data modify storage puzzle_park:macro data.function_setname set from entity @s Item.components."minecraft:item_name"
    execute as @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function,distance=..1] run function puzzle_park:source/warp_block/call_function_setname with storage puzzle_park:macro data
    data remove storage puzzle_park:macro data
    kill @s
  
  execute as @e[tag=puzzle_park.block.warp_block.1,tag=puzzle_park.function] run function puzzle_park:source/warp_block/warp with entity @s data

  ##

  execute as @e[type=item] at @s if entity @e[tag=puzzle_park.block.warp_block.2,tag=puzzle_park.function,distance=..1] run
    data modify storage puzzle_park:macro data.function_setname set from entity @s Item.components."minecraft:item_name"
    execute as @e[tag=puzzle_park.block.warp_block.2,tag=puzzle_park.function,distance=..1] run function puzzle_park:source/warp_block/call_function_setname with storage puzzle_park:macro data
    data remove storage puzzle_park:macro data
    kill @s
  
  execute as @e[tag=puzzle_park.block.warp_block.2,tag=puzzle_park.function] run function puzzle_park:source/warp_block/warp with entity @s data
  
  ##

  /call_function_setname
    data modify entity @s data.name set from storage puzzle_park:macro data.function_setname
    $say $(function_setname)
  
  /warp
    $execute as @a at @s if entity @e[tag=puzzle_park.block.warp_block.1,nbt={data:$(data)},distance=..1,type=marker] if entity @e[tag=puzzle_park.block.warp_block.2,nbt={data:$(data)}] run
      say player at warp 1
      execute as @e[tag=puzzle_park.block.warp_block.1] at @s as @a[distance=..1] at @e[limit=1,tag=puzzle_park.block.warp_block.2,sort=random] rotated as @s run tp @s ~ ~ ~ ~ ~
