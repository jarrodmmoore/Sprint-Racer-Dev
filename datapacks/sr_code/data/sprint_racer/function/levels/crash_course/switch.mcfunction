tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 1043 61 291 1049 67 291 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 1044 61 291 1048 65 291 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 1045 66 291 1047 66 291 oak_fence
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 1129 60 286 1129 60 288 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run clone 1043 41 291 1049 47 291 1043 61 291
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 1129 60 286 1129 60 288 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove switchON

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove turnItOff