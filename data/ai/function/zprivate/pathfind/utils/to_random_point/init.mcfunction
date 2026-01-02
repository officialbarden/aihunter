# // Summon End Point marker.
execute at @s align xyz positioned ~0.5 ~ ~0.5 summon marker run function ai:zprivate/pathfind/utils/to_random_point/spread

# // Pathfind to the above End Point Marker.
execute as @s at @n[tag=ai.Pathfind.EndPoint,type=marker] run function ai:zprivate/pathfind/init

# // Kill Marker
kill @e[tag=ai.Pathfind.EndPoint]
