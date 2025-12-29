#make sure data exists
#array of 5 ints
data modify entity @s data.NodeData set value [0,0,0,0,0]

#itemchestSeedA
execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s itemchestSeedA
#itemchestSeedB
execute store result entity @s data.NodeData[1] int 1 run scoreboard players get @s itemchestSeedB
#itemchestSeedR
execute store result entity @s data.NodeData[2] int 1 run scoreboard players get @s itemchestSeedR
#playerRequire
execute unless score @s playerRequire matches -2147483648..2147483647 run scoreboard players set @s playerRequire 5
execute store result entity @s data.NodeData[3] int 1 run scoreboard players get @s playerRequire
#itemchestSeedG
execute store result entity @s data.NodeData[4] int 1 run scoreboard players get @s itemchestSeedG
