#race
scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=1,wmDlcNum=49..}] wmDlcNum 24
scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=1,wmDlcNum=..23}] wmDlcNum 48
execute if score #secret_track_r value matches 1 run scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=1}] wmDlcNum 50
execute if score #secret_track_r value matches 1 run scoreboard players set #secret_track_r value 0 

#battle
scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=2,wmDlcNum=18..}] wmDlcNum 7
scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=2,wmDlcNum=..6}] wmDlcNum 17
execute if score #secret_track_b value matches 1 run scoreboard players set @e[tag=w,type=armor_stand,scores={wmDlcMode=2}] wmDlcNum 50
execute if score #secret_track_b value matches 1 run scoreboard players set #secret_track_b value 0 

#now update the display...
function sprint_racer:game_logic/0/worldmap_extra/dlc/update_display/_index