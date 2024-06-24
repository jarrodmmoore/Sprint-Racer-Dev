scoreboard players set @s customMedalB1 0
scoreboard players set @s customMedalB2 0
scoreboard players set @s customMedalB3 0
scoreboard players set @s customMedalB4 0
scoreboard players set @s customMedalS1 0
scoreboard players set @s customMedalS2 0
scoreboard players set @s customMedalS3 0
scoreboard players set @s customMedalS4 0
scoreboard players set @s customMedalG1 0
scoreboard players set @s customMedalG2 0
scoreboard players set @s customMedalG3 0
scoreboard players set @s customMedalG4 0
scoreboard players set @s customMedalD1 0
scoreboard players set @s customMedalD2 0
scoreboard players set @s customMedalD3 0
scoreboard players set @s customMedalD4 0

scoreboard players set @s medalRace 0
scoreboard players set @s medalBattle 0
scoreboard players set @s trackBestTime 0
scoreboard players set @s trackBestTimeB 0

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 2
function sprint_racer_language:_dlc_2/lobby/custom_track/medal_times_edit
#scoreboard