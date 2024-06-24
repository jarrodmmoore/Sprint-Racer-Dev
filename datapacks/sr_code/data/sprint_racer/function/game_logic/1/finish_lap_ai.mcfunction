scoreboard players add @s lap 1
scoreboard players add @s lapFake 1
scoreboard players set @s check 0
scoreboard players set @s timeSinceCheck 0

#get time difference
execute if entity @e[tag=w,type=armor_stand,limit=1,tag=optBalance,tag=timeBalance] run function sprint_racer:game_logic/1/checkpoint_time_difference/_lap

tag @s[tag=chicken_water] remove chicken_water

execute if entity @s[tag=!elytra_specific,scores={elytraTimer=10..}] run function sprint_racer:ai/general/behaviors/elytra_flight/race_refocus_target

scoreboard players set @s lastTeleport 0

#check if that's a finish or not
scoreboard players add @s lapCalc 0
scoreboard players operation @s lapCalc = @s lap
scoreboard players operation @s lapCalc -= @e[tag=w,limit=1] lap
execute if entity @s[scores={lapCalc=1..}] run function sprint_racer:game_logic/1/ai_finish

scoreboard players set @s resetCooldown 50

tag @s remove finishLap

#tactics mode, get next item
execute if entity @e[tag=w,type=armor_stand,scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/give_1

function sprint_racer:game_logic/1/ai_send_data_to_master