tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill -1206 75 -2924 -1206 77 -2922 air
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill -1203 81 -2955 -1201 81 -2955 lime_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add switchON

#TURN OFF (RED)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -1206 75 -2924 -1206 77 -2922 warped_fence
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -1203 81 -2955 -1201 81 -2955 red_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove switchON

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove turnItOff