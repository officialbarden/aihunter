# // ID System
scoreboard players operation #ID ai.ID = @s ai.ID
say Couldn't do A*
# // SmartMode enables the AI to Make Decisions
tag @s add ai.SmartMode

# // Give the Final Position a tag.
tag @e[tag=ai.PathfindTo.ThisPosition, predicate=ai:id, type=marker] add ai.PathFound

# // Set ~inf pathfind duration.
scoreboard players set @s ai.PathfindingDuration 999999

# // Move Tag:
tag @s add ai.Move

attribute @s step_height base set 1