tp @a[tag=!dontWarp] 459 95 -1271

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 4

execute if entity @e[type=armor_stand,tag=51a,tag=cheats,x=1548,y=148,z=422,distance=..1] run scoreboard players set @e[tag=w,type=armor_stand] lap 6
execute if entity @e[type=armor_stand,tag=51a,tag=cheats,x=1548,y=148,z=422,distance=..1] run scoreboard players set @e[tag=w,type=armor_stand] check 2

time set 23500

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=11}] add musicViable
######