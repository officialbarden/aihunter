# // If doesn't have tag, don't run function file:
execute unless entity @s[tag=ai.LookInDir] run return fail

scoreboard players operation #ID ai.ID = @s ai.ID
execute unless entity @n[tag=ai.LookVector,type=marker,predicate=ai:id] run return fail

# // Turn:
execute at @s anchored eyes rotated as @n[tag=ai.LookVector,predicate=ai:id,type=marker] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
