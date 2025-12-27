execute if data entity @s {pose:"standing"} run return fail
execute unless data entity @s {pose:"standing"} run data modify entity @s pose set value "standing"
scoreboard players operation @s ai.MovementSpeed = baseSneakSpeed ai.Values