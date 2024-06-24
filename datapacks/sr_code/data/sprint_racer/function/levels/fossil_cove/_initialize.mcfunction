tp @a[tag=!dontWarp] -66 78 1590

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,scores={gameState=7}] lap 3

weather rain
tag @e[tag=w,type=armor_stand] add raining
gamerule doDaylightCycle false
time set 6000



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=14}] add musicViable
######