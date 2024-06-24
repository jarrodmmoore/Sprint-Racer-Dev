scoreboard players reset @e[tag=random,type=armor_stand] rSortValue

#sort mode 0: use internal track order
execute if score #rSortType value matches 0 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue = @s rNumber

#sort mode 1: use rSortDifficulty
execute if score #rSortType value matches 1 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue = @s rSortDifficulty

#sort mode 2: use rSortAlphabet
execute if score #rSortType value matches 2 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue = @s rSortAlphabet

#sort mode 2: use rSortRecent
execute if score #rSortType value matches 3 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue = @s rSortRecent

#sort mode 3: use rSortPopular
execute if score #rSortType value matches 4 run scoreboard players set @e[type=armor_stand,tag=trackStandR,tag=random] rSortValue 2147483647
execute if score #rSortType value matches 4 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue -= @s rSortPopular

#sort mode 4: use rSortRandom
execute if score #rSortType value matches 5 as @e[type=armor_stand,tag=trackStandR,tag=random] run scoreboard players operation @s rSortValue = @s rSortRandom