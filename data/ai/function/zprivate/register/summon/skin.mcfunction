#$summon mannequin ~ ~ ~ {Tags:["ai.mannequin"], profile:{name:"$(SKIN)"}, Passengers:[{id:"text_display", text:"$(NAME)", Tags:["ai.mannequin.name", "new"]}]}
$summon mannequin ~ ~ ~ {Tags:["ai.mannequin"], profile:{name:"$(SKIN)"},hide_description:true, CustomName:"$(NAME)", CustomNameVisible:true}
data modify entity @n[tag=ai.mannequin.name,tag=new] transformation.translation[1] set value 0.15d
data modify entity @n[tag=ai.mannequin.name,tag=new] billboard set value "center"
tag @e[tag=ai.mannequin.name,tag=new] remove new
