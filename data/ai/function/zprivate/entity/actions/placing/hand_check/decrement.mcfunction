# // decrement block count (placed one block)
execute store result score #Count ai.Values run data get block 0 300 0 Items[0].count
scoreboard players remove #Count ai.Values 1

execute if score #Count ai.Values matches 1.. store result block 0 300 0 Items[0].count int 1 run scoreboard players get #Count ai.Values
$execute if score #Count ai.Values matches 1.. run item replace entity @s weapon.$(hand) from block 0 300 0 container.0
$execute if score #Count ai.Values matches ..0 run item replace entity @s weapon.$(hand) with air

