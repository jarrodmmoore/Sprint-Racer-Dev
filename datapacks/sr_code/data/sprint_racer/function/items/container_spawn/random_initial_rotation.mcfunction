scoreboard players operation #random1 value = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..15}] rNumber
scoreboard players operation #random2 value = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=1..12}] rNumber

execute if score #random2 value matches 1 run function sprint_racer:items/container_spawn/random_rotation/r2_1
execute if score #random2 value matches 2 run function sprint_racer:items/container_spawn/random_rotation/r2_2
execute if score #random2 value matches 3 run function sprint_racer:items/container_spawn/random_rotation/r2_3
execute if score #random2 value matches 4 run function sprint_racer:items/container_spawn/random_rotation/r2_4
execute if score #random2 value matches 5 run function sprint_racer:items/container_spawn/random_rotation/r2_5
execute if score #random2 value matches 6 run function sprint_racer:items/container_spawn/random_rotation/r2_6
execute if score #random2 value matches 7 run function sprint_racer:items/container_spawn/random_rotation/r2_7
execute if score #random2 value matches 8 run function sprint_racer:items/container_spawn/random_rotation/r2_8
execute if score #random2 value matches 9 run function sprint_racer:items/container_spawn/random_rotation/r2_9
execute if score #random2 value matches 10 run function sprint_racer:items/container_spawn/random_rotation/r2_10
execute if score #random2 value matches 11 run function sprint_racer:items/container_spawn/random_rotation/r2_11
execute if score #random2 value matches 12 run function sprint_racer:items/container_spawn/random_rotation/r2_12

tp @s ~ ~1 ~