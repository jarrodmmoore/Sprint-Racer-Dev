clone -1411 14 -2658 -1398 24 -2639 -1361 47 -2630
scoreboard players set #ggTrapW1 value 90
execute if score #halftick value matches 1 run scoreboard players set #ggTrapW1 value 45
execute positioned -1354 51 -2624 run function sprint_racer:explode

#feedback
execute as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ 100000 ~ 100000 1.33
execute as @a at @s run playsound minecraft:entity.ravager.celebrate master @s ~ 100000 ~ 100000 1.8

#enemy's switch
fill -1416 58 -2586 -1416 58 -2584 lime_wool