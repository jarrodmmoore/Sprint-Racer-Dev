scoreboard players set @a itemCooldown 0
scoreboard players set @a inputCooldown 0

execute if entity @e[tag=AImaster,type=armor_stand] unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=35a] run scoreboard players set @e[tag=ai] itemCooldown 0
execute if entity @e[tag=AImaster,type=armor_stand] run scoreboard players set @e[tag=ai] aiActICooldown 0
execute if entity @e[tag=AImaster,type=armor_stand] run scoreboard players set @e[tag=ai] inputCooldown 0