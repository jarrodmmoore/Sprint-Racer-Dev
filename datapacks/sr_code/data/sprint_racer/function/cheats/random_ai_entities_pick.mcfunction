#fallback is the standard zombie
scoreboard players set @s aiEntity 1

#adopt the entity number of a random armor stand
tag @e[limit=1,sort=random,tag=random,type=armor_stand,tag=!aiEntBan,scores={rNumber=1..17}] add aiEntChoose
execute if entity @e[type=armor_stand,tag=aiEntChoose] run scoreboard players operation @s aiEntity = @e[limit=1,type=armor_stand,tag=aiEntChoose] rNumber

#ban this number from now on, we want all unique mobs
tag @e[limit=1,type=armor_stand,tag=aiEntChoose] add aiEntBan
tag @e[limit=1,type=armor_stand,tag=aiEntChoose] remove aiEntChoose