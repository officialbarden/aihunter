# // Set States based on Location:
execute as @s[predicate=ai:on_ground] facing entity @n[tag=ai.PathfindTo.ThisPosition, predicate=ai:id] eyes rotated ~ 0 run particle end_rod ^ ^ ^1 0 0 0 0 1 force @a 
execute as @s[predicate=ai:on_ground] facing entity @n[tag=ai.PathfindTo.ThisPosition, predicate=ai:id] eyes rotated ~ 0 align y positioned ^ ^-2 ^1 if block ~ ~ ~ #air at @s positioned ~ ~-1 ~ unless block ~ ~ ~ #air run return run scoreboard players set @s ai.State 2
scoreboard players set @s ai.State 5
