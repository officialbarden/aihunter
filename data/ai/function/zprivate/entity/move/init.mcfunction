# // Accept Knockback
execute if score @s ai.HurtTime matches 1.. run return fail

# // for ID predicate.
scoreboard players operation #ID ai.ID = @s ai.ID

# // Take the Rotation context of this function file and draw a unit vector to get the X,Y,Z components.
execute positioned 0.0 0.0 0.0 rotated ~ ~ summon marker run function ai:zprivate/entity/move/draw_vector

# // Apply Motion:
function ai:zprivate/entity/move/apply

