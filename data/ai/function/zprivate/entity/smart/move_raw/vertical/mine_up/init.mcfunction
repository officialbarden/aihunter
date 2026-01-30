scoreboard players operation #mod_dx ai.SmartMode.MATH = #dx ai.SmartMode.MATH
scoreboard players operation #mod_dy ai.SmartMode.MATH = #dy ai.SmartMode.MATH
scoreboard players operation #mod_dz ai.SmartMode.MATH = #dz ai.SmartMode.MATH
execute if score #mod_dx ai.SmartMode.MATH matches ..-1 run scoreboard players operation #mod_dx ai.SmartMode.MATH *= -1 ai.Constants
execute if score #mod_dy ai.SmartMode.MATH matches ..-1 run scoreboard players operation #mod_dy ai.SmartMode.MATH *= -1 ai.Constants
execute if score #mod_dz ai.SmartMode.MATH matches ..-1 run scoreboard players operation #mod_dz ai.SmartMode.MATH *= -1 ai.Constants


scoreboard players set @s ai.State 1
scoreboard players set @s ai.IsMiningOrAttacking 0
execute if score #mod_dx ai.SmartMode.MATH matches ..250 if score #mod_dz ai.SmartMode.MATH matches ..250 run rotate @s ~ 90
execute if score #mod_dx ai.SmartMode.MATH matches ..250 if score #mod_dz ai.SmartMode.MATH matches ..250 run scoreboard players set @s ai.IsMiningOrAttacking 1
execute if score #mod_dx ai.SmartMode.MATH matches ..250 if score #mod_dz ai.SmartMode.MATH matches ..250 run scoreboard players set @s ai.State 0
scoreboard players set @s ai.IsPlacingOrUsing 0

item replace entity @s weapon.mainhand with diamond_pickaxe