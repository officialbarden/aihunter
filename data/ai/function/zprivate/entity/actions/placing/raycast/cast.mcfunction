scoreboard players remove #RaycastLimit ai.Values 10
execute if score #RaycastLimit ai.Values matches 1.. if block ~ ~ ~ #ai:air positioned ^ ^ ^0.1 run return run function ai:zprivate/entity/actions/placing/raycast/cast
execute positioned ~ ~ ~ if entity @s[distance=..2] run return fail
execute unless block ~ ~ ~ #ai:air positioned ^ ^ ^-0.1 run return run function ai:zprivate/entity/actions/placing/raycast/place_block
execute if score #RaycastLimit ai.Values matches ..0 run return fail
