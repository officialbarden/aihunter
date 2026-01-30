
# if dy is negative, Final Y Position is Higher than AI Y Position
execute if score #dy ai.SmartMode.MATH matches ..-1 run return run function ai:zprivate/entity/smart/move_raw/vertical/build_up/init
# if dy is positive, Final Y Position is lower than AI Y Position
execute if score #dy ai.SmartMode.MATH matches 1.. run return run function ai:zprivate/entity/smart/move_raw/vertical/mine_up/init
