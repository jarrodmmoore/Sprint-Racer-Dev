scoreboard players add @e[tag=focusT,type=armor_stand,limit=1] customMedalD2 1
scoreboard players set @e[tag=focusT,type=armor_stand,limit=1,scores={customMedalD2=6..}] customMedalD2 0

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.5
function sprint_racer_language:_dlc_2/lobby/custom_track/medal_times_edit