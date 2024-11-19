#make sure data exists
execute store result score #dataTest value run data get entity @s data.NodeData[0] 1
#if not, exit
execute if score #dataTest value matches 0 run return 0

#nCheck
execute store result score @s nCheck run data get entity @s data.NodeData[0] 1
#check_y_min
execute store result score @s check_y_min run data get entity @s data.NodeData[1] 1
#check_y_max
execute store result score @s check_y_max run data get entity @s data.NodeData[2] 1