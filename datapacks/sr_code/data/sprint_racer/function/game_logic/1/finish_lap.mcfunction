#record lap time (standard race only)
execute unless entity @e[tag=w,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run function sprint_racer:game_logic/1/record_lap/_index

#more than 10 laps, tell us our lap number
execute if entity @e[tag=w,type=armor_stand,scores={lap=11..}] unless entity @e[tag=w,type=armor_stand,scores={gamemodePresetA=2}] run function sprint_racer_language:_dlc_3/gameplay/show_laps_remaining

#testing mode, make sure we have pos calc points
execute if entity @e[type=armor_stand,tag=w,tag=customTesting,tag=!noCalcGen] run function sprint_racer:game_logic/10/test_track/calc_gen_finishline

scoreboard players add @s lap 1
scoreboard players add @s lapFake 1
scoreboard players set @s timeSinceCheck 0

#get time difference
execute if entity @e[tag=w,type=armor_stand,limit=1,tag=optBalance,tag=timeBalance] run function sprint_racer:game_logic/1/checkpoint_time_difference/_lap

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
scoreboard players operation @s lapCalc -= @e[tag=w,limit=1] lap
execute if entity @s[scores={lapCalc=..0}] run function sprint_racer:game_logic/1/next_lap
execute if entity @s[scores={lapCalc=1..}] run function sprint_racer:game_logic/1/player_finish

function sprint_racer:game_logic/1/self_scoreboard_setup
scoreboard players set @s resetCooldown 15

execute unless score #bbPersonalize value matches 2 run tag @s add bbarbump
tag @s add spdbump
tag @s remove finishLap