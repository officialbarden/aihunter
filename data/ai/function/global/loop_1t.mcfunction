# // Stop Pathfinding if Duration is < 0.
execute as @e[tag=ai.Move, tag=ai.mannequin, type=#ai:hunter, scores={ai.PathfindingDuration=..0}] at @s run function ai:zprivate/pathfind/stop
# // Tick Down Pathfinding Duration Timer:
execute as @e[tag=ai.Move, tag=ai.mannequin, type=#ai:hunter, scores={ai.PathfindingDuration=1..}] run scoreboard players remove @s ai.PathfindingDuration 1

# // Initialize Basic Values necessary for #ai:logic functions:
execute as @e[tag=ai.mannequin, type=#ai:hunter, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init
# // Run Basic Logic:
execute as @e[type=#ai:hunter, tag=ai.mannequin] at @s run function #ai:logic

# // Scheduled Looping File:
schedule function ai:global/loop_1t 1t replace
