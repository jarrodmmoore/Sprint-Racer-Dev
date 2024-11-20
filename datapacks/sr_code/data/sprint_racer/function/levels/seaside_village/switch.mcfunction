tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#tag=moveThisNode

#TURN ON (LIME)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] as @e[tag=node,tag=moveThisNode] at @s run tp @s ~ 60 ~
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 208 59 541 210 59 543 lime_glazed_terracotta
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill 240 60 542 240 60 544 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON

#TURN OFF (RED)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] as @e[tag=node,tag=moveThisNode] at @s run tp @s ~ 30 ~
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 208 59 541 210 59 543 oak_planks
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill 240 60 542 240 60 544 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove turnItOff