execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_2/lobby/custom_track/track_test_menu_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_2/lobby/custom_track/track_test_menu_battle

execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ 100000 ~ 100000 1.2
scoreboard players set @s inputCooldown 7