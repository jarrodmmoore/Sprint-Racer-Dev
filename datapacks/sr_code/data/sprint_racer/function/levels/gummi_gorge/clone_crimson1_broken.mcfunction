clone -1360 14 -2658 -1347 24 -2639 -1404 47 -2630
scoreboard players set #ggTrapC1 value 90
execute if score #halftick value matches 1 run scoreboard players set #ggTrapC1 value 45
execute positioned -1397 51 -2622 run function sprint_racer:explode

#feedback
execute as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 1.33
execute as @a at @s run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1.5

#enemy's switch
fill -1336 58 -2586 -1336 58 -2584 lime_wool