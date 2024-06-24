tag @e[tag=w,type=armor_stand] remove noCalcGen

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_2/lobby/custom_track/track_test_menu_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_2/lobby/custom_track/track_test_menu_battle

execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000
