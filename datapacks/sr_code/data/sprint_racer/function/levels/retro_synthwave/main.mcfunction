function sprint_racer:levels/retro_synthwave/map

#reset if fallen down
execute as @a[tag=playing,gamemode=adventure,scores={coord_y=..720000}] at @s unless block ~ -1 ~ purple_wool run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..720000}] run function sprint_racer:ai/general/die

#moving cars
function sprint_racer:levels/retro_synthwave/cars_main
execute if score #halftick value matches 1 run function sprint_racer:levels/retro_synthwave/cars_main

#arrow sign
scoreboard players add #retroArrowSign value 1
execute if score #halftick value matches 1 run scoreboard players add #retroArrowSign value 1
execute if score #retroArrowSign value matches 41.. run scoreboard players set #retroArrowSign value 1
execute if score #retroArrowSign value matches 1 positioned 1801 90 2672 run clone ~-8 ~-21 ~ ~-1 ~-15 ~-7 ~-2 ~3 ~-2
execute if score #retroArrowSign value matches 21 positioned 1799 90 2672 run clone ~-6 ~-28 ~ ~1 ~-22 ~-7 ~ ~3 ~-2