/give
  /custom
    /warps
      give @s allay_spawn_egg[ item_name='[{"text":"warp_block-1"}]', item_model="nether_wart_block", entity_data={id: "marker",Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-block-warp_block-1"]}]
      give @s allay_spawn_egg[ item_name='[{"text":"warp_block-2"}]', item_model="warped_wart_block", entity_data={id: "marker",Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-block-warp_block-2"]}]
    /hanging_bar
      give @s item_frame[ item_name='[{"text":"hanging_bar"}]', item_model="minecraft:chain", entity_data={id: "minecraft:item_frame", Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-block-hanging_bar"],Silent:true}]
    /wire
      give @s item_frame[ item_name='[{"text":"wire"}]', item_model="minecraft:shears", entity_data={id: "minecraft:item_frame", Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-block-wire"],Silent:true}]
    /ffi
      /order_table
        give @s allay_spawn_egg[ item_name='[{"text":"Fixer, Fix It!"},{"text":" || "},{"text":"Order Table"}]', item_model="minecraft:red_carpet", entity_data={id: "minecraft:marker", Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-ffi-order_table"]}]
  /dev_tool
    /remover
      give @s allay_spawn_egg[ item_name= '[{"text":"Remover","color": "red","bold": true}]', item_model="minecraft:barrier", entity_data={id: "minecraft:marker", Tags:["puzzle_park", "puzzle_park.spawn_custom", "puzzle_park-dev-remover"]}]
      
  /test
    effect give @s levitation 1 60
    scoreboard players set @s custom.player.double_jump 1
