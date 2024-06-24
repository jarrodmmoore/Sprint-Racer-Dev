scoreboard players set @s aiHoldingItem 0
execute unless score global gameState matches 3 run data merge entity @s {HandItems:[{},{}]}
execute if score global gameState matches 3 run data merge entity @s {HandItems:[{id:"minecraft:wooden_sword",Unbreakable:1b,CustomModelData:1111111,Enchantments:[{id:"minecraft:sweeping_edge",lvl:3s}]},{}]}