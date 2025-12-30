scoreboard players operation #ID ai.ID = @s ai.ID
execute as @s[tag=ai.LookAtInterestingMob] anchored eyes facing entity @n[type=#ai:interesting,distance=..30] eyes rotated ~ ~ run function ai:zprivate/look/init
execute as @s[tag=!ai.LookInDir,tag=!ai.LookAtInterestingMob,predicate=ai:bool/is_moving] anchored eyes facing entity @n[type=marker,tag=ai.PathFound,predicate=ai:id] eyes rotated ~ ~-35 run function ai:zprivate/look/init
