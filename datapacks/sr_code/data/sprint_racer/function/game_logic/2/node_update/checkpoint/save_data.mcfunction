#make sure data exists
#array of 9 ints
data modify entity @s data.NodeData set value [0,0,0,0,0,0,0,0,0]

#check
execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s check
#check_y_min
execute store result entity @s data.NodeData[1] int 1 run scoreboard players get @s check_y_min
#check_y_max
execute store result entity @s data.NodeData[2] int 1 run scoreboard players get @s check_y_max
#visualXoffset
execute store result entity @s data.NodeData[3] int 1 run scoreboard players get @s visualXoffset
#visualYoffset
execute store result entity @s data.NodeData[4] int 1 run scoreboard players get @s visualYoffset
#visualZoffset
execute store result entity @s data.NodeData[5] int 1 run scoreboard players get @s visualZoffset
#visualYaw
execute store result entity @s data.NodeData[6] int 1 run scoreboard players get @s visualYaw
#visualPitch
execute store result entity @s data.NodeData[7] int 1 run scoreboard players get @s visualPitch
#visualLength
execute store result entity @s data.NodeData[8] int 1 run scoreboard players get @s visualLength