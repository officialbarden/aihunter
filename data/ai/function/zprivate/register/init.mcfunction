# MACROS:
# $(NAME) $(DIFFICULTY) $(SKIN) $(SKIN_TYPE)
#$say $(NAME)
#$say $(SKIN)

scoreboard players reset @s ai.TurnSpeed

data remove storage ai:storage TEMP.AI.REGISTER
$data modify storage ai:storage TEMP.AI.REGISTER set value {NAME:"$(NAME)", SKIN:"$(SKIN)"}
function ai:zprivate/register/id
function ai:zprivate/register/append
execute store result score #Length ai.Constants run data get storage ai:storage TEMP.AI.REGISTER.SKIN

execute if score #Length ai.Constants matches ..16 run return run function ai:zprivate/register/summon/skin with storage ai:storage TEMP.AI.REGISTER
execute if score #Length ai.Constants matches 17.. run return run function ai:zprivate/register/summon/texture with storage ai:storage TEMP.AI.REGISTER