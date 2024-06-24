scoreboard players set #threshold value 100
scoreboard players operation #threshold value -= #voxelLocationZ value
execute if score @s coord_z2 > #threshold value run scoreboard players set @s trans_z 1