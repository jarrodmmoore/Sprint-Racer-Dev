execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ 1000000 ~ 1000000 1.8
tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.grand_prix.started_1",color:"gold",bold:true}]
tellraw @a ["",{translate:"sr.grand_prix.started_2",color:"white",bold:false}]
tellraw @a ["",{text:" "}]