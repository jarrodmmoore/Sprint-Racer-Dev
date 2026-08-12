#this is some serious japes
scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] randomizerTime 1
scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] randomizerTime 1
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={randomizerTime=..0}] as @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:cheats/randomize_cheats_1