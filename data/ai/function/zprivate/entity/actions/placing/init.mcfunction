# // PlacingDelay is the Timer scoreboard, it prevents the entity from placing 20 blocks a second or something.
execute unless items entity @s weapon.* #ai:block run return run scoreboard players set @s ai.IsPlacingOrUsing 0


execute unless score @s ai.PlacingDelay matches -2147483648..2147483647 run scoreboard players operation @s ai.PlacingDelay = @s ai.PlacingSpeed
execute if score @s ai.PlacingDelay matches 1.. run scoreboard players remove @s ai.PlacingDelay 1

execute if score @s ai.PlacingDelay matches ..0 run function ai:zprivate/entity/actions/placing/place
execute if score @s ai.PlacingDelay matches ..0 run scoreboard players reset @s ai.PlacingDelay
