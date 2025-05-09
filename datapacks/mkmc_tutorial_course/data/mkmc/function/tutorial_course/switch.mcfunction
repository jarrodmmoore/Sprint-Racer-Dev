tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 10502 72 -8924 10502 76 -8920 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 10495 71 -8922 10497 71 -8922 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 10502 72 -8924 10502 76 -8920 black_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 10495 71 -8922 10497 71 -8922 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove turnItOff