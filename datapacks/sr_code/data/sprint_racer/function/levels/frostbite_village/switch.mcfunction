tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,tag=!turnItOff] run fill 144 61 1530 150 66 1530 air
execute if entity @e[tag=w,tag=!turnItOff] run fill 145 67 1530 149 67 1530 air
execute if entity @e[tag=w,tag=!turnItOff] run fill 119 60 1560 121 60 1560 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,tag=turnItOff] run clone 144 41 1530 150 47 1530 144 61 1530
execute if entity @e[tag=w,tag=turnItOff] run fill 119 60 1560 121 60 1560 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff