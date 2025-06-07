title @a title [""]
title @a subtitle [""]
title @a actionbar [""]

tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.returned_to_custom_track_manager",color:"light_purple",bold:true}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 .5
tellraw @a ["",{text:" "}]