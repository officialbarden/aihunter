# // Build Up
rotate @s ~ 90
scoreboard players set @s ai.IsPlacingOrUsing 1
scoreboard players set @s ai.IsMiningOrAttacking 0
item replace entity @s weapon.mainhand with cobblestone[max_stack_size=99] 99