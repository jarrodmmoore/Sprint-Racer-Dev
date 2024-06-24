function sprint_racer:game_logic/6/worldmap_inspect
tag @s add checkThisMap

tellraw @a ["",{"text":" "}]

tag @a[tag=dontTellMe] remove dontTellMe

#get track title
execute at @s run function sprint_racer:game_logic/6/worldmap_say_name


execute if entity @e[tag=w,scores={trackBestTime2=1..}] run function sprint_racer:game_logic/6/show_times/show_pb_itemless
execute if entity @e[tag=w,scores={trackBestTime2=1..}] run tellraw @a ["",{"text":"---","bold":true,"color":"green"}]


execute if entity @e[tag=w,scores={medalRace=4..}] run function sprint_racer:game_logic/6/show_times/show_pb

#show diamond (only if beaten)
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,type=armor_stand] diamondTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,scores={medalRace=4..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/diamond_time_beaten

execute if entity @e[tag=w,scores={medalRace=3}] run function sprint_racer:game_logic/6/show_times/show_pb

#show gold
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,type=armor_stand] goldTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,scores={medalRace=..2}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/gold_time_not_beaten
execute if entity @e[tag=w,scores={medalRace=3..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/gold_time_beaten

execute if entity @e[tag=w,scores={medalRace=2}] run function sprint_racer:game_logic/6/show_times/show_pb

#show silver
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,type=armor_stand] silverTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,scores={medalRace=..1}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/silver_time_not_beaten
execute if entity @e[tag=w,scores={medalRace=2..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/silver_time_beaten

execute if entity @e[tag=w,scores={medalRace=1}] run function sprint_racer:game_logic/6/show_times/show_pb

#show bronze
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,type=armor_stand] bronzeTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,scores={medalRace=..0}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/bronze_time_not_beaten
execute if entity @e[tag=w,scores={medalRace=1..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/bronze_time_beaten

execute if entity @e[tag=w,scores={medalRace=..0}] run function sprint_racer:game_logic/6/show_times/show_pb

tag @e[tag=checkThisMap] remove checkThisMap


execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] run function sprint_racer_language:_dlc_1/lobby/player_chose_track
