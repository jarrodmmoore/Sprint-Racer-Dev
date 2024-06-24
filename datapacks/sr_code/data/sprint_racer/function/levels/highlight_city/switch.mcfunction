tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,tag=!turnItOff] run setblock 550 73 300 redstone_torch
execute if entity @e[tag=w,tag=!turnItOff] run setblock 547 73 300 redstone_torch
execute if entity @e[tag=w,tag=!turnItOff] run fill 519 73 253 519 73 255 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,tag=turnItOff] run setblock 550 73 300 air
execute if entity @e[tag=w,tag=turnItOff] run setblock 547 73 300 air
execute if entity @e[tag=w,tag=turnItOff] run fill 519 73 253 519 73 255 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff