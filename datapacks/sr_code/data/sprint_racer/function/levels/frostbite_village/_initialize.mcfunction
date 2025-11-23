tp @a[tag=!dontWarp] 91 78 1557

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 1

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] lap 3

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 2
gamerule advance_time false
time set 9000



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add musicViable
######