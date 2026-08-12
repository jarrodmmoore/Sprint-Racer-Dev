scoreboard players set @a itemCooldown 0
scoreboard players set @a inputCooldown 0

execute if entity @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=35a] run scoreboard players set @e[tag=ai] itemCooldown 0
execute if entity @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] run scoreboard players set @e[tag=ai] aiActICooldown 0
execute if entity @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] run scoreboard players set @e[tag=ai] inputCooldown 0