#show pb (if we have one)
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,type=armor_stand] bestTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,scores={bestTR=1..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_pb_no_dot