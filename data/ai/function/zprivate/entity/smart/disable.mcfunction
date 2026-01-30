execute unless entity @s[tag=ai.SmartMode] run return fail

# // ID
scoreboard players operation #ID ai.ID = @s ai.ID

# // Once SmartMode is disabled, run all these commands impulsively.
execute if entity @n[tag=ai.PathfindTo.ThisPosition,distance=..0.5, predicate= ai:id] run tag @s remove ai.SmartMode
execute unless entity @n[tag=ai.PathfindTo.ThisPosition,predicate=ai:id] run tag @s remove ai.SmartMode

execute as @s[tag=!ai.SmartMode] run function ai:zprivate/entity/actions/reset

