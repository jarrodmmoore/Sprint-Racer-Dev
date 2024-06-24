scoreboard players set #threshold value 100
scoreboard players operation #threshold value -= #voxelLocationY value
execute if score @s coord_y2 > #threshold value run scoreboard players set @s trans_y 1