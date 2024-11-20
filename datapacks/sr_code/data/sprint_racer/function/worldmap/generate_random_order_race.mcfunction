scoreboard players set @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1] rSortRandom 0
scoreboard players set #rSortRandom value 1
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,sort=random] run function sprint_racer:worldmap/generate_random_order_race_get