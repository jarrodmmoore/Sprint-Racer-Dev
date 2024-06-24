scoreboard players operation #threshold value = #voxelLocationZ value
scoreboard players operation #negative value = @s coord_z2
scoreboard players operation #negative value *= #-1 value
execute if score #negative value > #threshold value run scoreboard players set @s trans_z -1