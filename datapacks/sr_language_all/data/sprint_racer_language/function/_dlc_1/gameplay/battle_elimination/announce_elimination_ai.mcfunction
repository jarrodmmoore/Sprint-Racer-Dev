execute if score @s rNumber matches 1 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_1
execute if score @s rNumber matches 2 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_2
execute if score @s rNumber matches 3 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_3
execute if score @s rNumber matches 4 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_4
execute if score @s rNumber matches 5 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_5
execute if score @s rNumber matches 6 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_6
execute if score @s rNumber matches 7 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_7
execute if score @s rNumber matches 8 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_8
execute if score @s rNumber matches 9 run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai_macro with storage sprint_racer:ai_storage_9

#scoreboard players set @s subtitleDelay 40
#title @s subtitle ["",{translate:"sr.game.eliminated",color:"red",bold:true}]
#title @s title [""]

execute as @a at @s run playsound minecraft:custom_sfx/explode2 master @s ~ 100000 ~ .7 1.2 .7
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 1000000 .6