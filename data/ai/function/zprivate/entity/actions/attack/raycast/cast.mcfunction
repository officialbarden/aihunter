# // Raycasting Code
scoreboard players remove #RaycastLimit ai.Values 10

# // Store Damage Value
execute store result storage ai:storage TEMP.MACRO.DAMAGE float 0.001 run scoreboard players get @s ai.MaxDamage

# // Couldn't Find Block
execute if score #RaycastLimit ai.Values matches 1.. if block ~ ~ ~ #ai:air positioned ^ ^ ^0.1 run return run function ai:zprivate/entity/actions/mining/raycast/cast

# // Hit Entity
execute if score #RaycastLimit ai.Values matches 1.. positioned ~ ~ ~ if entity @n[dx=0,distance=..0.1] positioned ~-0.25 ~-0.25 ~-0.25 if entity @n[dx=0,distance=..0.1] run return run function ai:zprivate/entity/actions/mining/raycast/hit_entity with storage ai:storage TEMP.MACRO
execute unless block ~ ~ ~ #ai:air run return run function ai:zprivate/entity/actions/mining/raycast/break_block
execute if score #RaycastLimit ai.Values matches ..0 run return fail
