scoreboard players set @s medalWon 0

#how many of the medals did we beat?
execute if entity @s[scores={bronzeTR=1..}] run scoreboard players set @s medalWon 1
execute if entity @s[scores={silverTR=1..}] run scoreboard players set @s medalWon 2
execute if entity @s[scores={goldTR=1..}] run scoreboard players set @s medalWon 3
execute if entity @s[scores={diamondTR=1..}] run scoreboard players set @s medalWon 4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=cheatdetected] run scoreboard players set @s medalWon 0

#load up time data for track
execute as @e[tag=chosenTrack] run scoreboard players operation @s worldmapID = @s rNumber
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 1000
execute as @e[tag=!customtrack,tag=chosenTrack] run scoreboard players operation @s worldmapID += @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/6/worldmap_inspect
execute as @e[tag=chosenTrack] run scoreboard players reset @s worldmapID

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] currentTime
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math -= @e[tag=chosenTrack,limit=1] trackBestTimeB
execute if entity @e[tag=chosenTrack,scores={trackBestTimeB=..0}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math -1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..-1}] add gotNewPB

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] currentTime
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math -= @e[tag=chosenTrack,limit=1] trackBestTime2B
execute if entity @e[tag=chosenTrack,scores={trackBestTime2B=..0}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math -1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=taNoItems,scores={math=..-1}] add gotNewPB2

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=cheatdetected] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gotNewPB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=cheatdetected] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gotNewPB2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!taNoItems] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gotNewPB2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gotNewPB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove gotNewPB2



tellraw @a ["",{text:" "}]

#say track name before results
execute as @e[limit=1,type=armor_stand,tag=chosenTrack,tag=!customtrack] run function sprint_racer:game_logic/8/medal_award/say_track_name
execute as @e[limit=1,type=armor_stand,tag=chosenTrack,tag=customtrack] run function sprint_racer_language:_dlc_3/gameplay/custom_track_say_name

#no pickup  best times are always shown at the top if applicable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB2] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb_itemless
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB2] if entity @e[tag=chosenTrack,scores={trackBestTime2B=1..}] run function sprint_racer:game_logic/6/show_times/show_pb_itemless_no_dot_battle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB2,tag=taNoItems] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time_itemless

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=taNoItems] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add dotdotdot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB2] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add dotdotdot
execute if entity @e[tag=chosenTrack,scores={trackBestTime2B=1..}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add dotdotdot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=dotdotdot] run tellraw @a ["",{text:"---",bold:true,color:"green"}]
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove dotdotdot

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB,scores={medalWon=4..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB] if entity @e[tag=chosenTrack,scores={medalBattle=4..}] run function sprint_racer:game_logic/6/show_times/show_pb_no_dot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB,scores={medalWon=4..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time


#DIAMOND TIME (only show if beaten)
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] diamondTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={medalWon=4..}] if entity @e[tag=chosenTrack,scores={medalBattle=4..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/diamond_time_beaten
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={medalWon=4..}] unless entity @e[tag=chosenTrack,scores={medalBattle=4..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/diamond_time


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB,scores={medalWon=3}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB] if entity @e[tag=chosenTrack,scores={medalBattle=3}] run function sprint_racer:game_logic/6/show_times/show_pb_no_dot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB,scores={medalWon=3}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time

#GOLD TIME
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] goldTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=chosenTrack,scores={medalBattle=3..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/gold_time_beaten
execute unless entity @e[tag=chosenTrack,scores={medalBattle=3..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/gold_time


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB,scores={medalWon=2}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB] if entity @e[tag=chosenTrack,scores={medalBattle=2}] run function sprint_racer:game_logic/6/show_times/show_pb_no_dot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB,scores={medalWon=2}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time


#SILVER TIME
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] silverTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=chosenTrack,scores={medalBattle=2..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/silver_time_beaten
execute unless entity @e[tag=chosenTrack,scores={medalBattle=2..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/silver_time


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB,scores={medalWon=1}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB] if entity @e[tag=chosenTrack,scores={medalBattle=1}] run function sprint_racer:game_logic/6/show_times/show_pb_no_dot
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB,scores={medalWon=1}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time



#BRONZE TIME
function sprint_racer:game_logic/6/show_times/reset_values
scoreboard players operation @s lapTimeMsec = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bronzeTR
function sprint_racer:game_logic/6/show_times/number_cruncher
execute if entity @e[tag=chosenTrack,scores={medalBattle=1..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/bronze_time_beaten
execute unless entity @e[tag=chosenTrack,scores={medalBattle=1..}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/bronze_time


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB,scores={medalWon=..0}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/new_pb
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB,scores={medalWon=..0}] run function sprint_racer_language:_dlc_1/gameplay/show_record_times/show_your_time
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!gotNewPB] if entity @e[tag=chosenTrack,scores={medalBattle=..0}] run function sprint_racer:game_logic/6/show_times/show_pb_no_dot


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=cheatdetected] run function sprint_racer_language:_dlc_1/gameplay/time_attack/time_rejected


#got a new PB? record it!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB] run scoreboard players operation @e[tag=chosenTrack] trackBestTimeB = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] currentTime
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=gotNewPB2] run scoreboard players operation @e[tag=chosenTrack] trackBestTime2B = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] currentTime
tag @e[tag=gotNewPB] remove gotNewPB
tag @e[tag=gotNewPB2] remove gotNewPB2