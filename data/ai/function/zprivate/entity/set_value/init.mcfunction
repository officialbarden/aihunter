# // Initialise.
scoreboard players set @s ai.MovementSpeed 200
scoreboard players set @s ai.JumpStrength 410
scoreboard players set @s ai.ClimbingSpeed 110
scoreboard players set @s ai.MaxDamage 1000
scoreboard players set @s ai.Reach 5000
scoreboard players set @s ai.PlacingSpeed 5
scoreboard players set @s ai.AttackSpeed 30
scoreboard players set @s ai.MiningSpeed 20
scoreboard players set @s ai.ConsumingTimer 40

scoreboard players set @s ai.IsMiningOrAttacking 0
scoreboard players set @s ai.IsPlacingOrUsing 0
scoreboard players set @s ai.IsSneaking 0


scoreboard players operation @s ai.ID = .global ai.ID
scoreboard players add .global ai.ID 1

tag @s add ai.values.ready

