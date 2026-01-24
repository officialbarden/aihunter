# // Give the found entity the ai.TargettedEntity tag, give damage and then remove tag.

tag @n add ai.TargettedEntity
$damage @n[tag=ai.TargettedEntity] $(DAMAGE) mob_attack by @s
tag @e remove ai.TargettedEntity