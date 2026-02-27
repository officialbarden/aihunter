# // Go Down Climbable Blocks
#execute facing entity @n[tag=ai.PathFound,predicate=ai:id,type=marker] feet positioned ^ ^ ^1 if block ~ ~ ~ #climbable run tp @s ^ ^ ^0.1

execute if score @s ai.JumpDelay matches ..0 run scoreboard players operation @s ai.JumpDelay = baseJumpDelay ai.Values
scoreboard players remove @s[scores={ai.JumpDelay=1..}] ai.JumpDelay 1

# // Accept Knockback
execute if score @s ai.HurtTime matches 1.. run return fail
# // for ID predicate.
scoreboard players operation #ID ai.ID = @s ai.ID

# // Modify Rotation Context based on Player State:
function ai:zprivate/entity/move/statewise_motion

# // Apply Motion:
function ai:zprivate/entity/move/apply
