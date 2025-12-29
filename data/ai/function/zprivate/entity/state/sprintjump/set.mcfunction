# // Set Scoreboards
execute as @s[tag=ai.LookAtInterestingMob] anchored eyes facing entity @n[type=#ai:interesting,distance=..30] eyes rotated ~ ~ run function ai:zprivate/look/init
scoreboard players operation @s ai.MovementSpeed = baseSprintSpeed ai.Values
scoreboard players operation @s ai.JumpStrength = baseJumpStrength ai.Values