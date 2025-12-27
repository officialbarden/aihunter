execute as @e[tag=ai.mannequin, type=#ai:hunter, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init

execute as @e[type=#ai:hunter, tag=ai.mannequin] at @s run function #ai:logic
execute as @e[type=#ai:hunter, tag=ai.mannequin] at @s run function ai:zprivate/look/advanced
schedule function ai:global/loop_1t 1t replace
