# // Finds the Ground, so that it doesn't try to "pathfind to air"
execute if block ~ ~ ~ #ai:air positioned ~ ~-0.5 ~ align y run return run function ai:zprivate/pathfind/find_ground
execute positioned ~ ~1 ~ align y run function astar:_
execute unless entity @e[tag=astar.finished] run kill @e[tag=astar,type=marker]
