tp @a[tag=!dontWarp] 1268 90 -980

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 6
time set 4000


#remove ai? maybe, idk
#tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noAItrack

#longer time limit for this track (7 min)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 8609

scoreboard players set #pdaLap value 1
scoreboard players set #pdaLapCycle value 1
scoreboard players set @a lapFake 1

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=19}] add setBGM
#tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=9}] add musicViable
#tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add musicViable
######