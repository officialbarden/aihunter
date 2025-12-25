execute if data entity @s {pose:"crouching"} run return fail
execute unless data entity @s {pose:"crouching"} run data modify entity @s pose set value "crouching"
