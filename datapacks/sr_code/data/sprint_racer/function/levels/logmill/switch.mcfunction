tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,tag=!turnItOff] run fill 1084 70 580 1086 70 582 air
execute if entity @e[tag=w,tag=!turnItOff] run fill 1100 69 581 1102 69 581 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,tag=turnItOff] run fill 1084 70 580 1086 70 582 minecraft:oak_trapdoor[facing=west,half=top,open=false]
execute if entity @e[tag=w,tag=turnItOff] run fill 1100 69 581 1102 69 581 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff