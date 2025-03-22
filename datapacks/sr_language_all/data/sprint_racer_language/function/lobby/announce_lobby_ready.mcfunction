title @a subtitle ["",{translate:"sr.lobby.ready_to_play",color:"green",bold:true}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .5
execute as @a[tag=playing] at @s run particle falling_dust{block_state:"minecraft:lime_concrete"} ~ ~1 ~ 0.4 0.4 0.4 1 20