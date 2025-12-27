# // All important values are initalized here.

# AI Entity Attributes:
scoreboard objectives add ai.Health dummy
scoreboard objectives add ai.Hunger dummy
# // Rotation and Position values are scaled x1000
scoreboard objectives add ai.RotationX dummy
scoreboard objectives add ai.RotationY dummy
scoreboard objectives add ai.PosX dummy
scoreboard objectives add ai.PosY dummy
scoreboard objectives add ai.SpeedY dummy
scoreboard objectives add ai.PosZ dummy

# // Some Boolean States or Flags:
scoreboard objectives add ai.IsMiningOrAttacking dummy
scoreboard objectives add ai.IsPlacingOrUsing dummy
scoreboard objectives add ai.IsSneaking dummy
scoreboard objectives add ai.IsEatingOrDrinking dummy
# // Scoreboard checks if the AI is idle, walking, jumping, sprinting, walk+jump-ing or sprint+jump-ing
# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
scoreboard objectives add ai.State dummy
# // Technical Scoreboards (scaled x1000):
scoreboard objectives add ai.ConsumingTimer dummy
scoreboard objectives add ai.MovementSpeed dummy
scoreboard objectives add ai.JumpStrength dummy
scoreboard objectives add ai.MiningSpeed dummy
scoreboard objectives add ai.MiningDelay dummy
scoreboard objectives add ai.PlacingSpeed dummy
scoreboard objectives add ai.PlacingDelay dummy

scoreboard objectives add ai.AttackSpeed dummy
scoreboard objectives add ai.AttackDelay dummy
scoreboard objectives add ai.MaxDamage dummy
scoreboard objectives add ai.Gravity dummy
scoreboard objectives add ai.HurtTime dummy
scoreboard objectives add ai.Reach dummy


# ID Scoreboard
scoreboard objectives add ai.ID dummy
execute unless score .global ai.ID matches -2147483648..2147483647 run scoreboard players set .global ai.ID 1

# Special Values Scoreboards (x1000)
scoreboard objectives add ai.Values dummy
scoreboard players set baseMovementSpeed ai.Values 100
scoreboard players set baseSneakSpeed ai.Values 40
scoreboard players set baseSprintSpeed ai.Values 350

scoreboard objectives add ai.Constants dummy

# // AI Registry Scoreboard
scoreboard objectives add ai.Registry dummy
scoreboard players add #Global ai.Registry 1


# // Scheduled Looping Files:
function ai:global/loop_1t
function ai:global/loop_5t
