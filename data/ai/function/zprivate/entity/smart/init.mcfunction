execute unless entity @s[tag=ai.SmartMode] run return fail

tag @s remove ai.LookInDir
tag @s remove ai.LookAtInterestingMob

# // ID System
scoreboard players operation #ID ai.ID = @s ai.ID

# // Basically, make the AI tear through everything in its way to reach a point.
function ai:zprivate/entity/smart/move_raw/init

