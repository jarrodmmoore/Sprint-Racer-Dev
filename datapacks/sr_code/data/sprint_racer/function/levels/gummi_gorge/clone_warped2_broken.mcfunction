clone -1383 14 -2577 -1374 20 -2570 -1365 64 -2724
scoreboard players set #ggTrapW2 value 90
execute if score #halftick value matches 1 run scoreboard players set #ggTrapW2 value 45
execute positioned -1360 66 -2721 run function sprint_racer:explode

#feedback
execute as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ 100000 ~ 100000 1.66
execute as @a at @s run playsound minecraft:entity.ravager.celebrate master @s ~ 100000 ~ 100000 1.8

#enemy's switch
fill -1413 56 -2659 -1413 56 -2657 lime_wool