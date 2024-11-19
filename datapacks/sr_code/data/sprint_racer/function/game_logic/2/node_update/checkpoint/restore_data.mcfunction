#make sure data exists
execute store result score #dataTest value run data get entity @s data.NodeData[0] 1
#if not, exit
execute if score #dataTest value matches 0 run return 0

#check
execute store result score @s check run data get entity @s data.NodeData[0] 1
#check_y_min
execute store result score @s check_y_min run data get entity @s data.NodeData[1] 1
#check_y_max
execute store result score @s check_y_max run data get entity @s data.NodeData[2] 1
#visualXoffset
execute store result score @s visualXoffset run data get entity @s data.NodeData[3] 1
#visualYoffset
execute store result score @s visualYoffset run data get entity @s data.NodeData[4] 1
#visualZoffset
execute store result score @s visualZoffset run data get entity @s data.NodeData[5] 1
#visualYaw
execute store result score @s visualYaw run data get entity @s data.NodeData[6] 1
#visualPitch
execute store result score @s visualPitch run data get entity @s data.NodeData[7] 1
#visualLength
execute store result score @s visualLength run data get entity @s data.NodeData[8] 1