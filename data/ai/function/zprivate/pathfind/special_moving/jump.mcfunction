# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
execute at @s unless block ~ ~-1.5 ~ #air run scoreboard players set @s ai.State 2
scoreboard players set @s ai.State 5
function ai:zprivate/entity/move/init