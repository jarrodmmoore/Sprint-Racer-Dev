execute if block ~ 1 ~ white_wool run scoreboard players set @s worldmapID 37
execute if block ~ 1 ~ orange_wool run scoreboard players set @s worldmapID 1050
execute if block ~ 1 ~ magenta_wool run scoreboard players set @s worldmapID 50
execute if block ~ 1 ~ cyan_wool unless entity @e[type=armor_stand,tag=wmCustomStand,tag=trackminimap] run scoreboard players set @s worldmapID 9999
