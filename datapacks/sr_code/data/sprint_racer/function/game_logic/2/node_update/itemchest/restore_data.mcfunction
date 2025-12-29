#make sure data exists
execute store result score #dataTest value run data get entity @s data.NodeData[3] 1
#if not, exit
execute if score #dataTest value matches 0 run return 0

#itemchestSeedA
execute store result score @s itemchestSeedA run data get entity @s data.NodeData[0] 1
#itemchestSeedB
execute store result score @s itemchestSeedB run data get entity @s data.NodeData[1] 1
#itemchestSeedR
execute store result score @s itemchestSeedR run data get entity @s data.NodeData[2] 1
#playerRequire
execute store result score @s playerRequire run data get entity @s data.NodeData[3] 1
#itemchestSeedG
execute store result score @s itemchestSeedG run data get entity @s data.NodeData[4] 1