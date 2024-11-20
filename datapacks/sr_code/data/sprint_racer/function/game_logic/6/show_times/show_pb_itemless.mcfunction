#show pb (if we have one)
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] trackBestTime2
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={trackBestTime2=1..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_pb_itemless