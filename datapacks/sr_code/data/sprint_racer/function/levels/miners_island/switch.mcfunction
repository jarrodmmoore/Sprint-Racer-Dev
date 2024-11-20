tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 42 69 -726 42 69 -724 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=marker,tag=MIcheckpoint] add checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=marker,tag=MIcheckpointB] remove checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 41 60 -692 41 61 -686 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 31 55 -714 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 31 56 -714 lime_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 35 55 -714 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock 35 56 -714 lime_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 31 59 -713 34 59 -711 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 42 69 -726 42 69 -724 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=marker,tag=MIcheckpoint] remove checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=marker,tag=MIcheckpointB] add checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 31 55 -714 35 56 -714 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 41 60 -692 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 41 61 -692 red_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 41 60 -686 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run setblock 41 61 -686 red_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 31 59 -713 34 59 -711 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

setblock 31 59 -713 grass_block

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove turnItOff