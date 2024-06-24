scoreboard players operation #threshold value = #voxelLocationX value
scoreboard players operation #negative value = @s coord_x2
scoreboard players operation #negative value *= #-1 value
execute if score #negative value > #threshold value run scoreboard players set @s trans_x -1