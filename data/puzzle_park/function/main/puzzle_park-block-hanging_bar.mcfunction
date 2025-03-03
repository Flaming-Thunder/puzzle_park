playsound block.chain.place block @a ~ ~ ~ 1 1 0
summon minecraft:block_display ~ ~ ~ {Tags:["puzzle_park","puzzle_park.block","puzzle_park.block.physical","puzzle_park.function","puzzle_park.block.hanging_bar" ,"puzzle_park.block.hanging_bar.display"],block_state: {Name: "minecraft:polished_basalt", Properties: {axis: "y"}}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.24999999f, 0.9999999f, 0.24999997f], translation: [-0.125f, 0.125f, -0.5f]}}
execute as @s at @s positioned ^ ^ ^.46875 rotated as @s as @e[tag=!puzzle_park.rotated,tag=puzzle_park.block.hanging_bar,type=block_display,distance=..0.0001] run function puzzle_park:main/internal0
function puzzle_park:source/custom_block/tags/block-axis-simple/set-xyz {Source:"block",Name:"hanging_bar"}
execute as @s at @s positioned ^ ^ ^.46875 rotated as @s as @e[tag=puzzle_park.block.axis.y,tag=puzzle_park.block.hanging_bar,type=block_display,distance=..0.0001] run setblock ~ ~ ~ chain[axis=y]
execute as @s at @s positioned ^ ^ ^.46875 rotated as @s as @e[tag=puzzle_park.block.axis.z,tag=puzzle_park.block.hanging_bar,type=block_display,distance=..0.0001] run setblock ~ ~ ~ chain[axis=z]
execute as @s at @s positioned ^ ^ ^.46875 rotated as @s as @e[tag=puzzle_park.block.axis.x,tag=puzzle_park.block.hanging_bar,type=block_display,distance=..0.0001] run setblock ~ ~ ~ chain[axis=x]
function puzzle_park:main/puzzle_park-block-hanging_bar/state_placement {Axis:"x"}
function puzzle_park:main/puzzle_park-block-hanging_bar/state_placement {Axis:"y"}
function puzzle_park:main/puzzle_park-block-hanging_bar/state_placement {Axis:"z"}
kill @s