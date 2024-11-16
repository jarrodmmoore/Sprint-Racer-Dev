#this is some serious japes
scoreboard players remove @e[tag=w,type=armor_stand] randomizerTime 1
scoreboard players remove @e[tag=w,type=armor_stand,tag=halftick] randomizerTime 1
execute if entity @e[tag=w,type=armor_stand,scores={randomizerTime=..0}] as @e[type=armor_stand,tag=cheats,x=1550,y=148,z=406,distance=..1] run function sprint_racer:cheats/randomize_cheats_1