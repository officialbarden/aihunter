# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
scoreboard players set @s ai.State 5
function ai:zprivate/entity/move/init
