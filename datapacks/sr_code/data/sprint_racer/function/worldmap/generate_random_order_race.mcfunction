scoreboard players set @e[type=armor_stand,tag=random] rSortRandom 0
scoreboard players set #rSortRandom value 1
execute as @e[type=armor_stand,tag=random,sort=random] run function sprint_racer:worldmap/generate_random_order_race_get