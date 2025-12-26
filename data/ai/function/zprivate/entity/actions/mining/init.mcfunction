# // How long does it take for the entity to mine it.
execute unless score @s ai.MiningDelay matches -2147483648..2147483647 run scoreboard players operation @s ai.MiningDelay = @s ai.MiningSpeed

# // Run Checks:
execute if score @s ai.MiningDelay matches 1.. run scoreboard players remove @s ai.MiningDelay 1
execute if score @s ai.MiningDelay matches ..0 run function ai:zprivate/entity/actions/mining/mine

