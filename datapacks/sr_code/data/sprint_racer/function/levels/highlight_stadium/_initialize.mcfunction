tp @a[tag=!dontWarp] 823 73 319

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 7
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] lap 5

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 2
gamerule advance_time false
time set 21500

#night vision if we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add musicViable
######