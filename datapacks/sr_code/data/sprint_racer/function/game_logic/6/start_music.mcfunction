######
#MUSIC
tag @e[type=armor_stand,tag=random,tag=musicViable] remove musicViable
tag @e[type=armor_stand,tag=random,scores={rNumber=1}] add musicViable
scoreboard players operation @e[limit=1,type=armor_stand,tag=w] math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..2}] rNumber
execute if entity @e[tag=w,type=armor_stand,limit=1,scores={math=1}] run tag @e[type=armor_stand,tag=random,scores={rNumber=2}] add musicViable
function sprint_racer:music/global/pick_track
######