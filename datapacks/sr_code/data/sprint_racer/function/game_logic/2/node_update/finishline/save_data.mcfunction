#make sure data exists
#array of 3 ints
data modify entity @s data.NodeData set value [0,0,0]

#nCheck
execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s nCheck
#check_y_min
execute store result entity @s data.NodeData[1] int 1 run scoreboard players get @s check_y_min
#check_y_max
execute store result entity @s data.NodeData[2] int 1 run scoreboard players get @s check_y_max