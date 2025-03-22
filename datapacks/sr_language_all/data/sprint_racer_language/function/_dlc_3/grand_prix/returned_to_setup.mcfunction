title @a title [""]
title @a subtitle [""]
title @a actionbar [""]

tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.grand_prix.returned_to_setup_room",color:"gold",bold:true}]
execute as @a at @s run playsound minecraft:block.piston.extend master @s ~ 10000 ~ 10000 .8
tellraw @a ["",{text:" "}]