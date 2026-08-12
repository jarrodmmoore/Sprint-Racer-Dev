tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -1373 68 -1486 redstone_torch
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -1373 68 -1489 redstone_torch
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill -1483 78 -1479 -1483 78 -1477 lime_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add switchON

#TURN OFF (RED)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock -1373 68 -1486 air destroy
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock -1373 68 -1489 air destroy
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -1483 78 -1479 -1483 78 -1477 red_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove switchON

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove turnItOff