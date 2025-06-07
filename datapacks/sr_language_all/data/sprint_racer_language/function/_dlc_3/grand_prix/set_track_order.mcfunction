title @a subtitle [""]
title @a actionbar [""]
title @a title [""]

tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.grand_prix.set_a_track_sequence",color:"gold",bold:true}]
tellraw @a ["",{translate:"sr.grand_prix.track_sequence_description",color:"white",bold:false}]
execute as @a at @s run playsound minecraft:block.piston.extend master @s ~ 100000 ~ 100000 1
tellraw @a ["",{text:" "}]