# // Check if the Point is at a height, if so: Build up to that Point.
execute store result score #AI.POS.Y ai.SmartMode.MATH run scoreboard players get @s ai.PosY
execute store result score #FINAL_POS.Y ai.SmartMode.MATH run data get entity @n[tag=ai.PathfindTo.ThisPosition, predicate= ai:id, type=marker] Pos[1] 1000

# dy = AI_Pos - Final_Pos
scoreboard players operation #dy ai.SmartMode.MATH = #AI.POS.Y ai.SmartMode.MATH
scoreboard players operation #dy ai.SmartMode.MATH -= #FINAL_POS.Y ai.SmartMode.MATH

# if dy is negative, Final Y Position is Higher than AI Y Position
execute if score #dy ai.SmartMode.MATH matches ..-1 run return run function ai:zprivate/entity/smart/move_raw/vertical/build_up/init
# if dy is positive, Final Y Position is lower than AI Y Position
execute if score #dy ai.SmartMode.MATH matches 1.. run return run function ai:zprivate/entity/smart/move_raw/vertical/mine_down/init
