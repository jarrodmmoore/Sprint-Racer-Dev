#record lap time  (NOT USED IN TIME ATTACK DUE TO VISUAL CLUTTER)
#function sprint_racer:game_logic/1/record_lap/_index

#testing mode, make sure we have pos calc points
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting,tag=!noCalcGen] run function sprint_racer:game_logic/10/test_track/calc_gen_finishline

#store the lap number for subtitle display
scoreboard players operation @s taStoredLap = @s lap

scoreboard players add @s lap 1
scoreboard players add @s lapFake 1
scoreboard players set @s timeSinceCheck 0

#set repsawn point
scoreboard players set @s lastTeleport 0
execute at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run spawnpoint @s ~ ~1 ~

#unused, saves the splits ONLY if this was the best lap time
#scoreboard players add @s bestTime 0
#scoreboard players set @s[scores={bestTime=0}] bestTime 9999999
#scoreboard players operation @s splitCalc = @s currentTime
#scoreboard players operation @s splitCalc -= @s bestTime
#execute if entity @s[scores={splitCalc=..-1}] run function sprint_racer:game_logic/1/self_record_pb

#record splits for the previous lap
function sprint_racer:game_logic/1/self_record_pb

#check if that's a finish or not
scoreboard players add @s lapCalc 0
scoreboard players operation @s lapCalc = @s lap
scoreboard players operation @s lapCalc -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] lap
execute if entity @s[scores={lapCalc=..0}] run function sprint_racer:game_logic/7/next_lap
execute if entity @s[scores={lapCalc=1..}] run function sprint_racer:game_logic/7/player_finish

#reset lap timer for individual player
scoreboard players set @s taLapMin 0
scoreboard players set @s taLapSec 0
scoreboard players set @s taLapMsec 0

function sprint_racer:game_logic/1/self_scoreboard_setup
scoreboard players set @s resetCooldown 15

execute unless score #bbPersonalize value matches 2 run tag @s add bbarbump
tag @s add spdbump
tag @s remove finishLap