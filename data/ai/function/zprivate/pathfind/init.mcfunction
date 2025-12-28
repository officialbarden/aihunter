
# // If Not on Ground, Don't run Algorithm (prevent breaking it)
execute as @s[scores={ai.State=..2}] unless predicate ai:on_ground run return fail

# // Run the ASTAR Algorithm..
scoreboard players operation #ID ai.ID = @s ai.ID
kill @e[tag=ai.PathFound,predicate=ai:id,type=marker]

# // Run the A* Algorithm
function ai:zprivate/pathfind/find_ground
function ai:zprivate/pathfind/id_link
