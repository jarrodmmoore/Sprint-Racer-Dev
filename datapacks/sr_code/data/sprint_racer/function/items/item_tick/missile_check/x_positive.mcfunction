scoreboard players set #threshold value 100
scoreboard players operation #threshold value -= #voxelLocationX value
execute if score @s coord_x2 > #threshold value run scoreboard players set @s trans_x 1