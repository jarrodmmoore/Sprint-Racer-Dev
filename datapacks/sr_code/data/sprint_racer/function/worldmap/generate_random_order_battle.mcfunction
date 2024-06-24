scoreboard players set @e[type=armor_stand,tag=random] bSortRandom 0
scoreboard players set #bSortRandom value 1
execute as @e[type=armor_stand,tag=random,sort=random] run function sprint_racer:worldmap/generate_random_order_battle_get