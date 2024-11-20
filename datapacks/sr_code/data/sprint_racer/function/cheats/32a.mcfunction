#item rain timer
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemRainTimer 1
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] itemRainTimer 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={itemRainTimer=..0}] run function sprint_racer:cheats/item_rain_spawn