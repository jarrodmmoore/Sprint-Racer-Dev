tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 550 73 300 redstone_torch
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 547 73 300 redstone_torch
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 519 73 253 519 73 255 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 550 73 300 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 547 73 300 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 519 73 253 519 73 255 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove turnItOff