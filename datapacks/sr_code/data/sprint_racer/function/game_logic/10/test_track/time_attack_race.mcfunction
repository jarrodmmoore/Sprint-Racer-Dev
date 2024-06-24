tag @e[tag=focusT,limit=1,type=armor_stand] add chosenTrack
tag @e[tag=focusT,type=armor_stand,tag=custombattle] remove chosenTrack

scoreboard players set @e[tag=w,type=armor_stand] wmCustomMode 1

#IMPORTANT TAG
tag @e[tag=w,type=armor_stand] add customTesting

execute if entity @e[tag=chosenTrack] run function sprint_racer_language:_dlc_2/lobby/custom_track/now_testing

execute if entity @e[tag=chosenTrack] run function sprint_racer:game_logic/7/_initialize