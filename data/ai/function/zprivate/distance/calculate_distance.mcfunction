# // Distance is stored in transformation.scale[0] -> ai:storage TEMP.DISTANCE.OUT.DISPLACEMENT/HORIZONTAL/VERTICAL

# // Displacement
$data modify entity @s transformation set value [$(X)f,0f,0f,0f,$(Y)f,0f,0f,0f,$(Z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage ai:storage TEMP.DISTANCE.OUT.DISPLACEMENT set from entity @s transformation.scale[0]

# // Horizontal Distance
$data modify entity @s transformation set value [0f,0f,0f,0f,$(Y)f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
data modify storage ai:storage TEMP.DISTANCE.OUT.HORIZONTAL set from entity @s transformation.scale[0]

# // Vertical Distance
$data modify entity @s transformation set value [$(X)f,0f,0f,0f,0f,0f,0f,0f,$(Z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage ai:storage TEMP.DISTANCE.OUT.VERTICAL set from entity @s transformation.scale[0]


kill @s
