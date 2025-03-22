tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.game.steal_enchanted_1",color:"white"},{translate:"sr.game.steal_enchanted_2",color:"dark_purple"},{translate:"sr.game.steal_enchanted_3",color:"white"},{selector:"@e[limit=1,tag=stealTarget1]"},{text:".",color:"white"}]
tellraw @s ["",{text:" "}]

tellraw @a[tag=stealTarget1] ["",{text:" "}]
tellraw @a[tag=stealTarget1] ["",{translate:"sr.game.item_stolen_by",color:"white"},{selector:"@s"},{text:".",color:"white"}]
tellraw @a[tag=stealTarget1] ["",{text:" "}]

execute at @s run playsound minecraft:entity.arrow.hit_player master @s