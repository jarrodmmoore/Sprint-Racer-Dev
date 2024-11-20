tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!turnItOff] run clone 784 58 542 787 58 551 784 65 542
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!turnItOff] run fill 776 66 585 776 66 587 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=turnItOff] run clone 784 56 542 787 56 551 784 65 542
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=turnItOff] run fill 776 66 585 776 66 587 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove turnItOff