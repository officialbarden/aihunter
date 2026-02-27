# // Finds the Ground, so that it doesn't try to "pathfind to air"
execute if block ~ ~ ~ #ai:air positioned ~ ~-0.5 ~ align y run return run function ai:zprivate/pathfind/find_ground

# // Distance Checking: Make Sure it doesn't Try to A* Pathfind for < 15 blocks.
function ai:zprivate/distance/get
execute store result score #DISPLACEMENT ai.MATH run data get storage ai:storage TEMP.DISTANCE.OUT.DISPLACEMENT 1000
execute if score #DISPLACEMENT ai.MATH matches 15000.. run return run function ai:zprivate/pathfind/direct_path

# // Fill Structure Void so that AI can parkour
fill ~-3 ~ ~-3 ~3 ~ ~3 structure_void replace air strict

# // Run CJDev's A* Implementation:
execute positioned ~ ~1 ~ align y run function astar:_

execute as @e[tag=astar] at @s if block ~ ~-1 ~ structure_void run function ai:zprivate/pathfind/structure_void

# // Remove Structure Void:
fill ~-3 ~ ~-3 ~3 ~ ~3 air replace structure_void strict
