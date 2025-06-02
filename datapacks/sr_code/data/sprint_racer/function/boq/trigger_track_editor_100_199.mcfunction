#execute if score @s tTrackEditor matches 1100 run 
execute if score @s tTrackEditor matches 1101 run function sprint_racer:game_logic/10/medal_time/d1
execute if score @s tTrackEditor matches 1102 run function sprint_racer:game_logic/10/medal_time/d2
execute if score @s tTrackEditor matches 1103 run function sprint_racer:game_logic/10/medal_time/d3
execute if score @s tTrackEditor matches 1104 run function sprint_racer:game_logic/10/medal_time/d4
execute if score @s tTrackEditor matches 1105 run function sprint_racer:game_logic/10/medal_time/g1
execute if score @s tTrackEditor matches 1106 run function sprint_racer:game_logic/10/medal_time/g2
execute if score @s tTrackEditor matches 1107 run function sprint_racer:game_logic/10/medal_time/g3
execute if score @s tTrackEditor matches 1108 run function sprint_racer:game_logic/10/medal_time/g4
execute if score @s tTrackEditor matches 1109 run function sprint_racer:game_logic/10/medal_time/s1
execute if score @s tTrackEditor matches 1110 run function sprint_racer:game_logic/10/medal_time/s2
execute if score @s tTrackEditor matches 1111 run function sprint_racer:game_logic/10/medal_time/s3
execute if score @s tTrackEditor matches 1112 run function sprint_racer:game_logic/10/medal_time/s4
execute if score @s tTrackEditor matches 1113 run function sprint_racer:game_logic/10/medal_time/b1
execute if score @s tTrackEditor matches 1114 run function sprint_racer:game_logic/10/medal_time/b2
execute if score @s tTrackEditor matches 1115 run function sprint_racer:game_logic/10/medal_time/b3
execute if score @s tTrackEditor matches 1116 run function sprint_racer:game_logic/10/medal_time/b4
execute if score @s tTrackEditor matches 1117 run execute as @e[limit=1,type=armor_stand,tag=focusT] run function sprint_racer:game_logic/10/medal_time/clear
execute if score @s tTrackEditor matches 1118 run execute as @e[limit=1,type=armor_stand,tag=focusT] run function sprint_racer:game_logic/10/medal_time/clear_best
execute if score @s tTrackEditor matches 1119 run function sprint_racer:game_logic/10/test_track/battle
execute if score @s tTrackEditor matches 1120 run function sprint_racer:game_logic/10/test_track/time_attack_battle
execute if score @s tTrackEditor matches 1121 run function sprint_racer:game_logic/10/test_track/race
execute if score @s tTrackEditor matches 1122 run function sprint_racer:game_logic/10/test_track/time_attack_race
execute if score @s tTrackEditor matches 1123 run function sprint_racer:game_logic/10/test_track/calc_gen_enable
execute if score @s tTrackEditor matches 1124 run function sprint_racer:game_logic/10/test_track/calc_gen_disable
#...