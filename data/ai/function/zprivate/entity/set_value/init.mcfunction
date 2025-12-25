# // Initialise.
scoreboard players set @s ai.MovementSpeed 100
scoreboard players set @s ai.JumpStrength 410
scoreboard players set @s ai.StepHeight 500
scoreboard players set @s ai.MaxDamage 1000

scoreboard players set @s ai.IsMining 0
scoreboard players set @s ai.IsPlacing 0
scoreboard players set @s ai.IsSneaking 0


scoreboard players operation @s ai.ID = .global ai.ID
scoreboard players add .global ai.ID 1

tag @s add ai.values.ready

