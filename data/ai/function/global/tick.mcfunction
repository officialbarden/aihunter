# // Stop Pathfinding if Duration is < 0.
execute as @e[tag=ai.Move, tag=ai.mannequin, type=#ai:hunter, scores={ai.PathfindingDuration=..0}] at @s run function ai:zprivate/pathfind/stop
# // Tick Down Pathfinding Duration Timer:
execute as @e[tag=ai.Move, tag=ai.mannequin, type=#ai:hunter, scores={ai.PathfindingDuration=1..}] run scoreboard players remove @s ai.PathfindingDuration 1
# // If Pathfinding Failed; Run: (it's important to only run this via tick.mcfunction)
execute as @e[tag=!ai.Move, tag=ai.mannequin, type=#ai:hunter, scores={astar.status=0}] at @s run function ai:zprivate/move/init

# // Initialize Basic Values necessary for #ai:logic functions:
execute as @e[tag=ai.mannequin, type=#ai:hunter, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init
# // Run Basic Logic:
execute as @e[type=#ai:hunter, tag=ai.mannequin] at @s run function #ai:logic
