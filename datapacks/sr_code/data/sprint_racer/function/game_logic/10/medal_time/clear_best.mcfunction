scoreboard players set @s medalRace 0
scoreboard players set @s medalBattle 0
scoreboard players set @s trackBestTime 0
scoreboard players set @s trackBestTimeB 0

execute as @a at @s run playsound minecraft:entity.generic.burn master @s ~ 100000 ~ 100000 2
function sprint_racer_language:_dlc_2/lobby/custom_track/medal_times_edit
#scoreboard