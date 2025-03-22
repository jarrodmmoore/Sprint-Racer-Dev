execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5
tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.game.free_roam_ended",color:"dark_green",bold:true}]
tellraw @a ["",{translate:"sr.game.players_returned_to_lobby",color:"white",bold:false}]
tellraw @a ["",{text:" "}]