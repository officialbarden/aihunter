# // All important values are initalized here.

# AI Entity Attributes:
scoreboard objectives add ai.Health dummy
scoreboard objectives add ai.Hunger dummy
# // Rotation and Position values are scaled x1000
scoreboard objectives add ai.RotationX dummy
scoreboard objectives add ai.RotationY dummy
scoreboard objectives add ai.PosX dummy
scoreboard objectives add ai.PosY dummy
scoreboard objectives add ai.PosZ dummy

# // Some Boolean States:
scoreboard objectives add ai.IsMining dummy
scoreboard objectives add ai.IsPlacing dummy
scoreboard objectives add ai.IsSneaking dummy
# // Scoreboard checks if the AI is idle, walking, jumping, sprinting, walk+jump-ing or sprint+jump-ing
# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
scoreboard objectives add ai.State dummy


# // Scheduled Looping Files:
function ai:global/loop_1t
