scoreboard players operation #threshold value = #voxelLocationY value
scoreboard players operation #negative value = @s coord_y2
scoreboard players operation #negative value *= #-1 value
execute if score #negative value > #threshold value run scoreboard players set @s trans_y -1