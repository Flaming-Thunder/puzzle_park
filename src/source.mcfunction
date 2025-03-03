/spawn_custom
  execute as @e[tag=puzzle_park, tag=puzzle_park.spawn_custom] at @s run
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[0]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[1]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data modify storage puzzle_park:macro data.function_spawn set from entity @s Tags[2]
    function puzzle_park:source/spawn_custom/call_function_spawn with storage puzzle_park:macro data
    data remove storage puzzle_park:macro data
  /call_function_spawn
    $execute positioned ~ ~.1 ~ align xyz positioned ~.5 ~.5 ~.5 run function puzzle_park:main/$(function_spawn)
    #$say $(function_spawn)

/custom_block
  /tags
    /physical
      execute as @e[tag=puzzle_park, tag=puzzle_park.block.physical] at @s run
        execute as @s at @s if block ~ ~ ~ air run
          kill @s
          particle dust{color:16777215,scale:.25} ~ ~ ~ 0.2 0.2 0.2 0 25 normal
    /block-axis-simple
      $execute as @s if entity @s[nbt={Facing:$(Facing)b}] rotated as @s as @e[tag=!puzzle_park.block.axis.$(Exclude_Axis_1),tag=!puzzle_park.block.axis.$(Exclude_Axis_2),tag=puzzle_park.$(Source).$(Block_Name),type=block_display,distance=..0.0001] run tag @s add puzzle_park.block.axis.$(Set_Axis)
      /set-xyz
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:0,Exclude_Axis_1:"x",Exclude_Axis_2:"z",Set_Axis:"y"}
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:1,Exclude_Axis_1:"x",Exclude_Axis_2:"z",Set_Axis:"y"}
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:2,Exclude_Axis_1:"x",Exclude_Axis_2:"y",Set_Axis:"z"}
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:3,Exclude_Axis_1:"x",Exclude_Axis_2:"y",Set_Axis:"z"}
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:4,Exclude_Axis_1:"y",Exclude_Axis_2:"z",Set_Axis:"x"}
        $function puzzle_park:source/custom_block/tags/block-axis-simple {Source:"$(Source)",Block_Name:"$(Name)",Facing:5,Exclude_Axis_1:"y",Exclude_Axis_2:"z",Set_Axis:"x"}
    /block-axis-nsew
      $execute as @s if score @p global.player.facing-simple matches $(Facing) rotated as @s as @e[tag=!puzzle_park.block.facing.$(Exclude_Face_1),tag=!puzzle_park.block.facing.$(Exclude_Face_2),tag=!puzzle_park.block.facing.$(Exclude_Face_3),tag=puzzle_park.$(Source).$(Block_Name),type=$(Type),distance=..0.0001] run tag @s add puzzle_park.block.facing.$(Set_Face)
      $execute as @e[tag=puzzle_park.block.facing.n,tag=puzzle_park.$(Source).$(Block_Name),type=$(Type),distance=..0.0001] run
        tp @s ~ ~ ~ 0 0
      $execute as @e[tag=puzzle_park.block.facing.e,tag=puzzle_park.$(Source).$(Block_Name),type=$(Type),distance=..0.0001] run
        tp @s ~ ~ ~ 90 0
      $execute as @e[tag=puzzle_park.block.facing.s,tag=puzzle_park.$(Source).$(Block_Name),type=$(Type),distance=..0.0001] run
        tp @s ~ ~ ~ 180 0
      $execute as @e[tag=puzzle_park.block.facing.w,tag=puzzle_park.$(Source).$(Block_Name),type=$(Type),distance=..0.0001] run
        tp @s ~ ~ ~ -90 0
      /set
        $function puzzle_park:source/custom_block/tags/block-axis-nsew {Source:"$(Source)",Block_Name:"$(Name)",Type:"$(Type)",Facing:0,Exclude_Face_1:"s",Exclude_Face_2:"e",Exclude_Face_3:"w",Set_Face:"n"}
        $function puzzle_park:source/custom_block/tags/block-axis-nsew {Source:"$(Source)",Block_Name:"$(Name)",Type:"$(Type)",Facing:1,Exclude_Face_1:"s",Exclude_Face_2:"n",Exclude_Face_3:"w",Set_Face:"e"}
        $function puzzle_park:source/custom_block/tags/block-axis-nsew {Source:"$(Source)",Block_Name:"$(Name)",Type:"$(Type)",Facing:2,Exclude_Face_1:"n",Exclude_Face_2:"e",Exclude_Face_3:"w",Set_Face:"s"}
        $function puzzle_park:source/custom_block/tags/block-axis-nsew {Source:"$(Source)",Block_Name:"$(Name)",Type:"$(Type)",Facing:3,Exclude_Face_1:"s",Exclude_Face_2:"e",Exclude_Face_3:"n",Set_Face:"w"}

  ##

  /warp_block

  #

  /hanging_bar
    execute as @a at @s if entity @e[tag=puzzle_park.function,tag=puzzle_park,tag=puzzle_park.block.wire,distance=..20] run
      execute as @e[tag=puzzle_park,tag=puzzle_park.block.hanging_bar.display] at @s if entity @a[distance=20..25] run
        data merge entity @s {block_state:{Name:"air"}}
      execute as @e[tag=puzzle_park,tag=puzzle_park.block.hanging_bar.display] at @s unless entity @a[distance=20..] run
        data merge entity @s {block_state:{Name:"polished_basalt"}}

      execute as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ air positioned ~ ~1 ~ if entity @e[tag=puzzle_park.block.hanging_bar,distance=..0.45] run
        execute as @s at @s if score @s global.player.is_sneaking matches 0 run
          effect give @s levitation 1 10 true
        execute as @s at @s if score @s global.player.is_sneaking matches 1.. run
          effect clear @s levitation
      
      function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~.25 ~ ~",Axis:"x"}
      function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~-.25 ~ ~",Axis:"x"}
      function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~ ~ ~.25",Axis:"z"}
      function puzzle_park:source/custom_block/hanging_bar/offset {Offset:"~ ~ ~-.25",Axis:"z"}

      execute as @a at @s positioned ~ ~2 ~ unless entity @e[tag=puzzle_park.block.hanging_bar,distance=..0.8] if entity @e[tag=puzzle_park.block.hanging_bar,distance=..2] run
        effect clear @s levitation
    /offset
      $execute as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ air positioned ~ ~1 ~ positioned $(Offset) if entity @e[tag=puzzle_park.block.axis.$(Axis),tag=puzzle_park.block.hanging_bar,distance=..0.45] run
        execute as @s at @s if score @s global.player.is_sneaking matches 0 run
          effect give @s levitation 1 10 true
        execute as @s at @s if score @s global.player.is_sneaking matches 1.. run
          effect clear @s levitation
      $execute as @a at @s positioned ~ ~2 ~ positioned $(Offset) unless entity @e[tag=puzzle_park.block.hanging_bar,distance=..0.8] if entity @e[tag=puzzle_park.block.hanging_bar,distance=..2] run
        effect clear @s levitation

    
  #

  /wire
    execute as @e[tag=puzzle_park.function,tag=puzzle_park,tag=puzzle_park.block.wire.display] at @s unless entity @a[distance=..25] unless entity @a[distance=30..] unless entity @s[nbt={block_state:{Name:"minecraft:air"}}] run
        data merge entity @s {block_state:{Name:"air"}}
    execute as @a at @s if entity @e[tag=puzzle_park,tag=puzzle_park.block.wire,distance=..20] run
      execute as @e[tag=puzzle_park,tag=puzzle_park.block.wire.display,tag=puzzle_park.block.wire.powered,distance=..20] unless entity @s[nbt={block_state:{Name:"minecraft:white_candle"}}] at @s unless entity @a[distance=20..] run
        data merge entity @s {block_state:{Name:"white_candle"}}
      execute as @e[tag=puzzle_park,tag=puzzle_park.block.wire.display,tag=!puzzle_park.block.wire.powered,distance=..20] unless entity @s[nbt={block_state:{Name:"minecraft:gray_candle"}}] at @s unless entity @a[distance=20..] run
        data merge entity @s {block_state:{Name:"gray_candle"}}

      execute as @a at @s as @e[tag=puzzle_park,tag=puzzle_park.block.wire,distance=..20] at @s run
        execute as @s at @s if score @s client.block.wire.timer matches 1.. run
          scoreboard players remove @s client.block.wire.timer 1

        execute as @s at @s if entity @s[tag=puzzle_park.block.wire.powered] positioned ^ ^ ^1 if score @s client.block.wire.timer matches 0 run
          execute as @s if block ~ ~ ~ air run
          
            particle electric_spark ^ ^ ^-.3 0 0 0 0.05 10 normal
            tag @s remove puzzle_park.block.wire.powered

          execute as @s if entity @e[tag=puzzle_park.block.wire,tag=!puzzle_park.block.wire.powered,distance=..0.0001] positioned ^ ^ ^-2 if entity @e[tag=puzzle_park.block.wire,tag=!puzzle_park.block.wire.powered,distance=..0.0001] run
            tag @s remove puzzle_park.block.wire.powered
            execute as @s at @s positioned ^ ^ ^1 as @e[tag=puzzle_park.block.wire,tag=!puzzle_park.block.wire.powered,distance=..0.0001] at @s run
              tag @s add puzzle_park.block.wire.powered
              scoreboard players set @s client.block.wire.timer 4


  #
  /order_table
    execute as @a at @s if entity @e[tag=puzzle_park,tag=puzzle_park.ffi.order_table,distance=..20] as @e[tag=puzzle_park,tag=puzzle_park.ffi.order_table,distance=..20] at @s run
      tp @s ~ ~ ~ ~4 ~
  #
  