# // These are the actions that the Entity can perform when the score is 1 or more..
execute if score @s ai.IsMiningOrAttacking matches 1.. run function ai:zprivate/entity/actions/mining/init
execute if score @s ai.IsEatingOrDrinking matches 1.. run function ai:zprivate/entity/actions/eating/init
execute if score @s ai.IsPlacingOrUsing matches 1.. run function ai:zprivate/entity/actions/placing/init
execute if score @s ai.IsSneaking matches 1.. run function ai:zprivate/entity/actions/is_sneaking/init