#make sure data exists
execute store result score #dataTest value run data get entity @s data.NodeData[0] 1
#if not, exit
execute if score #dataTest value matches 0 run return 0

#teleport
execute store result score @s teleport run data get entity @s data.NodeData[0] 1