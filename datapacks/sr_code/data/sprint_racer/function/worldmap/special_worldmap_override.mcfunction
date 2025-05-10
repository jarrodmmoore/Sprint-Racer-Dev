#hidden tracks
#praia classic
execute if block ~ 1 ~ white_wool run scoreboard players set @s worldmapID 37
#underworld
execute if block ~ 1 ~ orange_wool run scoreboard players set @s worldmapID 1050
#cotton void
execute if block ~ 1 ~ magenta_wool run scoreboard players set @s worldmapID 50

#custom tracks: check what the player is looking at
execute if block ~ 1 ~ cyan_wool at @s run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/_player_active_tick

#v1.6 tracks
execute if block ~ 1 ~ light_blue_wool run scoreboard players set @s worldmapID 51
execute if block ~ 1 ~ lime_wool run scoreboard players set @s worldmapID 52
execute if block ~ 1 ~ pink_wool run scoreboard players set @s worldmapID 53
execute if block ~ 1 ~ gray_wool run scoreboard players set @s worldmapID 54
execute if block ~ 1 ~ light_gray_wool run scoreboard players set @s worldmapID 1018
execute if block ~ 1 ~ purple_wool run scoreboard players set @s worldmapID 1019