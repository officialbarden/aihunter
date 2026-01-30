# // Calculate Distances:
function ai:zprivate/entity/smart/move_raw/distances

# // Manage horizontal displacements
function ai:zprivate/entity/smart/move_raw/horizontal/init
# // Manage vertical displacements
execute if score #dx ai.SmartMode.MATH matches ..1000 if score #dz ai.SmartMode.MATH matches ..1000 run function ai:zprivate/entity/smart/move_raw/vertical/init
