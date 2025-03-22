tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.game.steal_item",color:"white"},{selector:"@e[limit=1,tag=stealTarget2]"},{text:".",color:"white"}]
tellraw @s ["",{text:" "}]

tellraw @a[tag=stealTarget2] ["",{text:" "}]
tellraw @a[tag=stealTarget2] ["",{translate:"sr.game.item_stolen_by",color:"white"},{selector:"@s"},{text:".",color:"white"}]
tellraw @a[tag=stealTarget2] ["",{text:" "}]

execute at @s run playsound minecraft:entity.arrow.hit_player master @s