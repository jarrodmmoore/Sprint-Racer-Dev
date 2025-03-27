#CUT, doesn't work... can't turn baby zombies back into fully grown zombies without losing scoreboard inventory data

#hide button while not in water
execute if entity @s[scores={invisibility=2..},tag=!hideButton] unless block ~ ~ ~ water run tag @s add changeButton
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=161..}] if entity @s[tag=changeButton] run data merge entity @s {IsBaby:1b,equipment:{}}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=..160}] if entity @s[tag=changeButton] run data merge entity @s {equipment:{head:{id:"minecraft:green_stained_glass",count:1}}}
tag @s[tag=changeButton] add hideButton
tag @s[tag=changeButton] remove changeButton

#put the button back when invisibility ends OR we're in water
execute if entity @s[scores={invisibility=..1}] run tag @s add changeButton
execute if entity @s[scores={invisibility=2..},tag=hideButton] if block ~ ~ ~ water run tag @s add changeButton
execute if entity @s[tag=changeButton] run data merge entity @s {IsBaby:0b,equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:enchantments":{depth_strider:3,binding_curse:1,vanishing_curse:1}}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0}}
tag @s[tag=changeButton] remove hideButton
tag @s[tag=changeButton] remove changeButton