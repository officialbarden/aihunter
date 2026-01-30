# // Mine Blocks Above:
#execute at @s positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 0 0 0 0 10 force
#execute at @s positioned ~ ~-1 ~ run particle end_rod ~ ~ ~ 0 0 0 0 10 force
scoreboard players set @s ai.State 5


execute at @s[predicate=ai:on_ground] positioned ~ ~2 ~ unless block ~ ~ ~ #air run return run function ai:zprivate/entity/smart/move_raw/vertical/build_up/mine

# // If there's Space above, Build Up:
scoreboard players set @s ai.State 4
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ #air if block ~ ~2 ~ #air run function ai:zprivate/entity/smart/move_raw/vertical/build_up/place
