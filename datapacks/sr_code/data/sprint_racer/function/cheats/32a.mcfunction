#item rain timer
scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] itemRainTimer 1
scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] itemRainTimer 1

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={itemRainTimer=..0}] run function sprint_racer:cheats/item_rain_spawn