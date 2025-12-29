scoreboard objectives add astar.f dummy
scoreboard objectives add astar.g dummy
scoreboard objectives add astar.h dummy
scoreboard objectives add astar.y dummy
scoreboard objectives add astar.config dummy
# Config
execute unless score maxDistance astar.config matches -2147483648..2147483647 run scoreboard players set maxDistance astar.config 100
execute unless score maxFallDistance astar.config matches -2147483648..2147483647 run scoreboard players set maxFallDistance astar.config -3
execute unless score maxStepHeight astar.config matches -2147483648..2147483647 run scoreboard players set maxStepHeight astar.config 1