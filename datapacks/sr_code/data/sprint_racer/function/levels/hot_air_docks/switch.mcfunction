tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=switchON] add turnItOff

#TURN ON (LIME)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -282 143 -1258 lime_stained_glass
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -282 144 -1258 lime_concrete
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -286 143 -1254 lime_stained_glass
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run setblock -286 144 -1254 lime_concrete
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[tag=node,type=marker,tag=HADcheckpoint] add checkpoint
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill -282 143 -1255 -281 143 -1250 lime_glazed_terracotta replace polished_blackstone
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run fill -247 147 -1225 -247 147 -1223 lime_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add switchON

#TURN OFF (RED)
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -282 143 -1258 -282 144 -1258 air
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -286 143 -1254 -286 144 -1254 air
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[tag=node,type=marker,tag=HADcheckpoint] remove checkpoint
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -282 143 -1255 -281 143 -1250 polished_blackstone replace lime_glazed_terracotta
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run fill -247 147 -1225 -247 147 -1223 red_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=turnItOff] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove switchON

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove turnItOff