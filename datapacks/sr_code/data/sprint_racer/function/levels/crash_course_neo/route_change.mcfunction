#add lap
scoreboard players add #ccneo_lap value 1

#remove the arrow signs after one route change
execute if loaded 435 58 100 unless block 435 61 100 air run fill 435 61 100 435 62 105 air

#flip flop between the 2 routes
scoreboard players add #ccneo_route value 1
execute if score #ccneo_route value matches 3.. run scoreboard players set #ccneo_route value 1