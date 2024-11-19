#make sure data exists
execute store result score #dataTest value run data get entity @s data.NodeData[0] 1
#if not, exit
execute if score #dataTest value matches 0 run return 0

#id
execute store result score @s AIBC_id run data get entity @s data.NodeData[0] 1
#dir1
execute store result score @s AIBC_dir1 run data get entity @s data.NodeData[1] 1
#dir2
execute store result score @s AIBC_dir2 run data get entity @s data.NodeData[2] 1
#dir3
execute store result score @s AIBC_dir3 run data get entity @s data.NodeData[3] 1
#dir4
execute store result score @s AIBC_dir4 run data get entity @s data.NodeData[4] 1
#hook
execute store result score @s AIBC_hook run data get entity @s data.NodeData[5] 1
#spread
execute store result score @s AIBC_spread run data get entity @s data.NodeData[6] 1
#event
execute store result score @s AIBC_event run data get entity @s data.NodeData[7] 1
#condition
execute store result score @s AIBC_condition run data get entity @s data.NodeData[8] 1