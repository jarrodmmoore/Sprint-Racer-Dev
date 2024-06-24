#CUT, doesn't work... can't turn baby zombies back into fully grown zombies without losing scoreboard inventory data

#hide button while not in water
execute if entity @s[scores={invisibility=2..},tag=!hideButton] unless block ~ ~ ~ water run tag @s add changeButton
execute if entity @e[tag=w,scores={gameTime=161..}] if entity @s[tag=changeButton] run data merge entity @s {IsBaby:1b,ArmorItems:[{},{},{},{}]}
execute if entity @e[tag=w,scores={gameTime=..160}] if entity @s[tag=changeButton] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_stained_glass",count:1}]}
tag @s[tag=changeButton] add hideButton
tag @s[tag=changeButton] remove changeButton

#put the button back when invisibility ends OR we're in water
execute if entity @s[scores={invisibility=..1}] run tag @s add changeButton
execute if entity @s[scores={invisibility=2..},tag=hideButton] if block ~ ~ ~ water run tag @s add changeButton
execute if entity @s[tag=changeButton] run data merge entity @s {IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f]}
tag @s[tag=changeButton] remove hideButton
tag @s[tag=changeButton] remove changeButton