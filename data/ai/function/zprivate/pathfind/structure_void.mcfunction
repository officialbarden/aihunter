execute as @s[tag=ai.PathFound.Parkour] run return fail
tag @n[limit=8, distance=..2, tag=!ai.PathFound.Parkour] add ai.Pathfound.Parkour.Edge
tag @s add ai.PathFound.Parkour
tag @s add ai.PathFound.Parkour.Jump