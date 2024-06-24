tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,tag=!turnItOff] run fill 96 47 1730 96 49 1733 minecraft:air
execute if entity @e[tag=w,tag=!turnItOff] run fill 96 50 1731 96 50 1732 minecraft:air
execute if entity @e[tag=w,tag=!turnItOff] run fill 107 60 1733 107 60 1735 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,tag=turnItOff] run fill 96 48 1730 96 49 1733 minecraft:iron_bars
execute if entity @e[tag=w,tag=turnItOff] run fill 96 50 1731 96 50 1732 minecraft:iron_bars
execute if entity @e[tag=w,tag=turnItOff] run fill 96 47 1730 96 47 1733 minecraft:iron_bars[waterlogged=true]
execute if entity @e[tag=w,tag=turnItOff] run fill 107 60 1733 107 60 1735 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff