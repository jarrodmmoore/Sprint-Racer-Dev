tp @a[tag=!dontWarp] -587 216 146

#worldedit paste...
#tp @s ~ 255 ~ 180 0

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lap 2
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] check 4
gamerule advance_time false
time set 6000

gamerule fall_damage false



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add musicViable
######