# // Summon Marker
execute align xyz positioned ~0.5 ~1 ~0.5 run summon marker ~ ~ ~ {Tags:[ai.PathfindTo.ThisPosition, ai.New]}

# // Set ID
scoreboard players operation @n[tag=ai.New, tag=ai.PathfindTo.ThisPosition, type=marker] ai.ID = @s ai.ID
tag @e[tag=ai.New, tag=ai.PathfindTo.ThisPosition, type=marker] remove ai.New

# // Start Direct Pathing
function ai:zprivate/move/init
