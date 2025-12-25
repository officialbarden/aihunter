execute as @e[tag=ai.mannequin, type=mannequin, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init
execute as @e[type=mannequin, tag=ai.mannequin] at @s run function ai:zprivate/entity/store/init

schedule function ai:global/loop_1t 1t replace
