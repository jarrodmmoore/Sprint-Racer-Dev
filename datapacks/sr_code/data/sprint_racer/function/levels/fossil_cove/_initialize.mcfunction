tp @a[tag=!dontWarp] -66 78 1590

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] lap 3

weather rain
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add raining
gamerule doDaylightCycle false
time set 6000



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add musicViable
######