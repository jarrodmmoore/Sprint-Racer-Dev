#make sure data exists
#array of 1 ints
data modify entity @s data.NodeData set value [0]

#scriptMove
execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s scriptMove