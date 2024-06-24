execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{no9:1b}}}]}] run function sprint_racer_language:gameplay/give_item/no9
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{no10:1b}}}]}] run function sprint_racer_language:gameplay/give_item/no10

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{elite12:1b}}}]}] run clear @s elytra
execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1}]}] run clear @s elytra
