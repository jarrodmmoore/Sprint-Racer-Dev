execute if entity @e[tag=w,type=armor_stand,scores={wmDlcNum=50,wmDlcMode=1}] run scoreboard players set @e[tag=w,type=armor_stand] wmDlcNum 49
execute if entity @e[tag=w,type=armor_stand,scores={wmDlcNum=50,wmDlcMode=2}] run scoreboard players set @e[tag=w,type=armor_stand] wmDlcNum 18

scoreboard players remove @e[tag=w,type=armor_stand] wmDlcNum 1

execute if entity @e[tag=w,type=armor_stand,scores={wmDlcNum=23,wmDlcMode=1}] if entity @e[type=armor_stand,tag=cheats,x=1550,y=148,z=406,distance=..1,tag=38] run scoreboard players set #secret_track_r value 1
execute if entity @e[tag=w,type=armor_stand,scores={wmDlcNum=6,wmDlcMode=2}] if entity @e[type=armor_stand,tag=cheats,x=1550,y=148,z=406,distance=..1,tag=46] run scoreboard players set #secret_track_b value 1

function sprint_racer:game_logic/0/worldmap_extra/dlc/keep_in_bounds
function sprint_racer_language:_dlc_1/lobby/track_selector_buttons/previous