scoreboard players reset @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] bSortValue

#sort mode 0: use internal track order
execute if score #bSortType value matches 0 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue = @s rNumber

#sort mode 1: use bSortSize
execute if score #bSortType value matches 1 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue = @s bSortSize

#sort mode 2: use bSortAlphabet
execute if score #bSortType value matches 2 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue = @s bSortAlphabet

#sort mode 2: use bSortRecent
execute if score #bSortType value matches 3 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue = @s bSortRecent

#sort mode 3: use bSortPopular
execute if score #bSortType value matches 4 run scoreboard players set @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,scores={bSortPopular=1..}] bSortValue 2147483647
execute if score #bSortType value matches 4 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue -= @s bSortPopular

#sort mode 4: use bSortRandom
execute if score #bSortType value matches 5 as @e[type=armor_stand,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s bSortValue = @s bSortRandom