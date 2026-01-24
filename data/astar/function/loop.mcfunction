execute if score @s astar.iterCount matches 0 run return run kill @e[tag=astar]

scoreboard players set min astar.f 2147483647
scoreboard players operation min astar.f < @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled] astar.f
scoreboard players set min astar.h 2147483647
scoreboard players operation min astar.h < @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled,predicate=astar:lowest] astar.h

tag @s add astar.Pathfinder
execute if score @s astar.iterCount matches 1.. as @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled,predicate=astar:next,sort=random,limit=1] at @s run function astar:step

# Loop if not Finished
execute as @s[scores={astar.iterCount=1..}] unless entity @n[type=marker,tag=astar,tag=astar.finalizer,tag=!astar.finished] if entity @n[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled] run function astar:loop
