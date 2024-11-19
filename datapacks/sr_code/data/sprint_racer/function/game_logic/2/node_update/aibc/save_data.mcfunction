#make sure data exists
#array of 9 ints
data modify entity @s data.NodeData set value [0,0,0,0,0,0,0,0,0]

#id
execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s AIBC_id
#dir1
execute store result entity @s data.NodeData[1] int 1 run scoreboard players get @s AIBC_dir1
#dir2
execute store result entity @s data.NodeData[2] int 1 run scoreboard players get @s AIBC_dir2
#dir3
execute store result entity @s data.NodeData[3] int 1 run scoreboard players get @s AIBC_dir3
#dir4
execute store result entity @s data.NodeData[4] int 1 run scoreboard players get @s AIBC_dir4
#hook
execute store result entity @s data.NodeData[5] int 1 run scoreboard players get @s AIBC_hook
#spread
execute store result entity @s data.NodeData[6] int 1 run scoreboard players get @s AIBC_spread
#event
execute store result entity @s data.NodeData[7] int 1 run scoreboard players get @s AIBC_event
#condition
execute store result entity @s data.NodeData[8] int 1 run scoreboard players get @s AIBC_condition