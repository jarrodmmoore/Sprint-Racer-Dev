######
#MUSIC
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add musicViable
scoreboard players operation @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..2}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={math=1}] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add musicViable
function sprint_racer:music/global/pick_track
######