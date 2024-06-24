scoreboard players operation @s hudNode = #hudNode value
scoreboard players add #hudNode value 1

#returning to player from spectator mode? get our old hudNode back
#we do this so players can't toggle spectators 32 times and eat up all 32 nodes
execute if score @s storedHudNode matches 1..32 run scoreboard players operation @s hudNode = @s storedHudNode
execute if score @s storedHudNode matches 1..32 run scoreboard players remove #hudNode value 1

#note: if #hudNode goes above 33, we've run out of nodes and need to switch back to the old hud