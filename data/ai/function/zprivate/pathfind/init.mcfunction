# // Run the ASTAR Algorithm..
scoreboard players operation #ID ai.ID = @s ai.ID
kill @e[tag=ai.PathFound,predicate=ai:id,type=marker]

# // Run the A* Algorithm
function ai:zprivate/pathfind/find_ground
function ai:zprivate/pathfind/id_link
