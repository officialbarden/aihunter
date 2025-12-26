# This function file prioritises mainhand block over offhand block..
# If no block found in mainhand, then it checks offhand..
execute if items entity @s weapon.mainhand #ai:block run item replace block 0 300 0 container.0 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand #ai:block run function ai:zprivate/entity/actions/placing/raycast/place_block_macro with block 0 300 0 Items[0]
execute if items entity @s weapon.mainhand #ai:block run return run function ai:zprivate/entity/actions/placing/hand_check/decrement {hand: "mainhand"}

execute if items entity @s weapon.offhand #ai:block run item replace block 0 300 0 container.0 from entity @s weapon.offhand
execute if items entity @s weapon.offhand #ai:block run function ai:zprivate/entity/actions/placing/raycast/place_block_macro with block 0 300 0 Items[0]
execute if items entity @s weapon.offhand #ai:block run return run function ai:zprivate/entity/actions/placing/hand_check/decrement {hand: "offhand"}
