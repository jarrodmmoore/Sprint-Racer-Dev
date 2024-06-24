#item rain timer
scoreboard players remove @e[tag=w,type=armor_stand] itemRainTimer 1
scoreboard players remove @e[tag=w,type=armor_stand,tag=halftick] itemRainTimer 1

execute if entity @e[tag=w,type=armor_stand,scores={itemRainTimer=..0}] run function sprint_racer:cheats/item_rain_spawn