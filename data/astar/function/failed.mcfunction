say I FAILED.


tag @e[tag=astar.destination] add ai.PathfindTo.ThisPosition
scoreboard players operation @e[tag=ai.PathfindTo.ThisPosition] ai.ID = @s ai.ID

tag @e[tag=astar.destination] remove astar

kill @e[tag=astar]
tag @s remove astar.pathfinder
scoreboard players set @s astar.status 0

