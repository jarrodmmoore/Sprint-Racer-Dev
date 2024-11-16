clone -1403 14 -2577 -1394 20 -2570 -1396 64 -2724
scoreboard players set #ggTrapC2 value 90
execute if score #halftick value matches 1 run scoreboard players set #ggTrapC2 value 45
execute positioned -1392 66 -2721 run function sprint_racer:explode

#feedback
execute as @a at @s run playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000 1.66
execute as @a at @s run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1.5

#enemy's switch
fill -1339 56 -2659 -1339 56 -2657 lime_wool