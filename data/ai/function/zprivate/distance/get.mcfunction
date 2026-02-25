# // Calculates Distance between two points.
# // Credit: Triton365 - https://discord.com/channels/154777837382008833/157097006500806656/1139627709690028092

# // Remove Trailing Data..
data remove storage ai:storage TEMP.DISTANCE

# // Get AI Entity's Pos (or the Entity Running the Command)
execute store result score #AI.POS.X ai.MATH run data get entity @s Pos[0] 1000
execute store result score #AI.POS.Y ai.MATH run data get entity @s Pos[1] 1000
execute store result score #AI.POS.Z ai.MATH run data get entity @s Pos[2] 1000

# // Get Position NBT of Current Function's Context
execute summon marker run function ai:zprivate/distance/get_context_pos

# // Subtract Position Values
scoreboard players operation #TARGET_POSITION.POS.X ai.MATH -= #AI.POS.X ai.MATH
scoreboard players operation #TARGET_POSITION.POS.Y ai.MATH -= #AI.POS.Y ai.MATH
scoreboard players operation #TARGET_POSITION.POS.Z ai.MATH -= #AI.POS.Z ai.MATH

# // Store into Storage and Macro
execute store result storage ai:storage TEMP.MACRO.X float 0.001 run scoreboard players get #TARGET_POSITION.POS.X ai.MATH
execute store result storage ai:storage TEMP.MACRO.Y float 0.001 run scoreboard players get #TARGET_POSITION.POS.Y ai.MATH
execute store result storage ai:storage TEMP.MACRO.Z float 0.001 run scoreboard players get #TARGET_POSITION.POS.Z ai.MATH

# // Calculate Distance
execute positioned 0.0 0.0 0.0 summon item_display run function ai:zprivate/distance/calculate_distance with storage ai:storage TEMP.MACRO

# // Distance outputted in:
# ai:storage TEMP.DISTANCE.OUT.DISPLACEMENT/HORIZONTAL/VERTICAL