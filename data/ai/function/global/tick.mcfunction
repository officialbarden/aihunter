#execute store result score TotalHuntersInGame ai.Registry if entity @e[tag=ai.mannequin,type=#ai:hunter]
#execute store result score TotalRegisteries ai.Registry run data get storage ai:storage AI.REGISTRY

# // If the player doesn't have ai.Move path, it gets the tag.
# execute as @e[tag=ai.mannequin, type=#ai:hunter, tag=!ai.Move] at @p run function ai:zprivate/pathfind/init
# // Pathfind to Random Point:
#execute as @e[tag=ai.mannequin, type=#ai:hunter, tag=!ai.Move] at @s run function ai:zprivate/pathfind/utils/to_random_point/init

function ai:global/loop_1t