tp @a[tag=!dontWarp] 141 78 1706

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] lap 2

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 6
gamerule doDaylightCycle false
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add raining
weather rain
time set 6000



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add musicViable
######