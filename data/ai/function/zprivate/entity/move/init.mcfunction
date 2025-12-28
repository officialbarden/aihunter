# // Go Down Climbable Blocks
execute facing entity @n[tag=ai.PathFound,predicate=ai:id,type=marker] feet positioned ^ ^ ^1 if block ~ ~ ~ #climbable run tp @s ^ ^ ^0.1

# // Accept Knockback
execute if score @s ai.HurtTime matches 1.. run return fail

# // for ID predicate.
scoreboard players operation #ID ai.ID = @s ai.ID

# // Take the Rotation context of this function file and draw a unit vector to get the X,Y,Z components.
execute positioned 0.0 0.0 0.0 rotated ~ -45 summon marker run function ai:zprivate/entity/move/draw_vector

# // Apply Motion:
function ai:zprivate/entity/move/apply

