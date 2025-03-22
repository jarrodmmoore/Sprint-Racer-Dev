execute as @a at @s run playsound minecraft:entity.bat.death master @s ~ 100000 ~ 100000
tellraw @a ["",{translate:"sr.lobby.time_attack_data_erased",color:"red",bold:true}]