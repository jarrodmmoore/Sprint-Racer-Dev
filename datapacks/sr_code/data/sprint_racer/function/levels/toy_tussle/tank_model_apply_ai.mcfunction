clear @s stone_button
execute store result score @s kart_model run random value 1..8
scoreboard players add @s kart_model 100

#force team color in teams mode
execute if entity @s[tag=playerOrange] run scoreboard players set @s kart_model 104
execute if entity @s[tag=playerCyan] run scoreboard players set @s kart_model 107

execute if score @s kart_model matches 101 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/green_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 102 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/blue_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 103 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/red_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 104 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/yellow_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 105 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/pink_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 106 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/white_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 107 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/cyan_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
execute if score @s kart_model matches 108 run data merge entity @s {equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/toy_tussle/gray_tank"}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
