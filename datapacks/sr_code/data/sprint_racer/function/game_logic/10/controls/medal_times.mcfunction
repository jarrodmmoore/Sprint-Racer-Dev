function sprint_racer_language:_dlc_2/lobby/custom_track/medal_times_edit

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 .5
scoreboard players set @s inputCooldown 10