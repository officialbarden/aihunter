# MACROS:
# $(NAME) $(DIFFICULTY) $(SKIN) $(SKIN_TYPE)
#$say $(NAME)
#$say $(DIFFICULTY)
#$say $(SKIN)
#$say $(SKIN_TYPE)

data remove storage ai:storage TEMP.AI.REGISTER
$data modify storage ai:storage TEMP.AI.REGISTER set value {NAME:"$(NAME)", DIFFICULTY:$(DIFFICULTY), SKIN:"$(SKIN)", SKIN_TYPE:"$(SKIN_TYPE)"}
function ai:zprivate/register/id
function ai:zprivate/register/append