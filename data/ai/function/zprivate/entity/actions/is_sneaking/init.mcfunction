execute unless entity @s[type=mannequin] run return fail
execute if score @s ai.IsSneaking matches 0 run return run function ai:zprivate/entity/actions/is_sneaking/off
execute if score @s ai.IsSneaking matches 1 run function ai:zprivate/entity/actions/is_sneaking/on