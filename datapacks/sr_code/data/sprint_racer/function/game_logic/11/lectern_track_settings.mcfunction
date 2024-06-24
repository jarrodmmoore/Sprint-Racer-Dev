scoreboard players set @s inputCooldown 16

execute if entity @e[limit=1,tag=w,type=armor_stand,scores={gpNumber=1..}] run playsound minecraft:entity.chicken.egg master @s ~ 100000 ~ 100000 .9
execute if entity @e[limit=1,tag=w,type=armor_stand,scores={gpNumber=1..}] run function sprint_racer:game_logic/11/track_settings_menu
execute unless entity @e[limit=1,tag=w,type=armor_stand,scores={gpNumber=1..}] run function sprint_racer_language:_dlc_3/grand_prix/no_track_exists