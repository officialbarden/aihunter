# FROM THIS FUNCTION FILE, GET dx, dy, dz which are displacement vector components of displacement between AI and FinalPosition.


# dx calculation:
execute store result score #AI.POS.X ai.SmartMode.MATH run scoreboard players get @s ai.PosX
execute store result score #FINAL_POS.X ai.SmartMode.MATH run data get entity @n[tag=ai.PathfindTo.ThisPosition, predicate= ai:id, type=marker] Pos[0] 1000
scoreboard players operation #dx ai.SmartMode.MATH = #AI.POS.X ai.SmartMode.MATH
scoreboard players operation #dx ai.SmartMode.MATH -= #FINAL_POS.X ai.SmartMode.MATH

# dz calculation:
execute store result score #AI.POS.Z ai.SmartMode.MATH run scoreboard players get @s ai.PosZ
execute store result score #FINAL_POS.Z ai.SmartMode.MATH run data get entity @n[tag=ai.PathfindTo.ThisPosition, predicate= ai:id, type=marker] Pos[2] 1000
scoreboard players operation #dz ai.SmartMode.MATH = #AI.POS.Z ai.SmartMode.MATH
scoreboard players operation #dz ai.SmartMode.MATH -= #FINAL_POS.Z ai.SmartMode.MATH

# // Check if the Point is at a height, if so: Build up to that Point.
execute store result score #AI.POS.Y ai.SmartMode.MATH run scoreboard players get @s ai.PosY
execute store result score #FINAL_POS.Y ai.SmartMode.MATH run data get entity @n[tag=ai.PathfindTo.ThisPosition, predicate= ai:id, type=marker] Pos[1] 1000
# dy = AI_Pos - Final_Pos
scoreboard players operation #dy ai.SmartMode.MATH = #AI.POS.Y ai.SmartMode.MATH
scoreboard players operation #dy ai.SmartMode.MATH -= #FINAL_POS.Y ai.SmartMode.MATH

