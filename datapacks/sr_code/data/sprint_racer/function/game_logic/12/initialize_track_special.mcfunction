tp @a -1510 222 -1022
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 4
time set 18000
scoreboard players set #creditsTrack value 2

tag @e[tag=chosenTrack] remove chosenTrack
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=30}] add chosenTrack

execute if score #specialCredits value matches 1 run scoreboard players add #specialCredits value 1