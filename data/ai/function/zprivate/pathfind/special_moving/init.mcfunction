# // Make sure it only Jumps from Edges of Block:
execute align y facing entity @n[tag=ai.PathFound, predicate=ai:id, type=marker] eyes rotated ~ 0 positioned ^ ^-0.1 ^1 unless block ~ ~ ~ #air run return fail
# // Jump
execute align y facing entity @n[tag=ai.PathFound.Parkour.Jump, predicate=ai:id,type=marker] eyes rotated ~ -45 run function ai:zprivate/pathfind/special_moving/jump
