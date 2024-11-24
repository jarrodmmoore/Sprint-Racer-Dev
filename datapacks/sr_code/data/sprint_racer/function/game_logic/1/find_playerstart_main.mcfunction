tag @e[tag=spawnOccupy] remove spawnOccupy

execute store result score #test value run execute if entity @e[limit=1,type=marker,tag=finishline,tag=posCalc]
execute if score #test value matches 1 as @e[tag=activeplayer,sort=random] at @s at @e[limit=1,sort=nearest,type=marker,tag=finishline,tag=posCalc] run function sprint_racer:game_logic/1/find_playerstart_player
execute unless score #test value matches 1 as @e[tag=activeplayer,sort=random] at @s run function sprint_racer:game_logic/1/find_playerstart_player

tag @e[tag=spawnOccupy] remove spawnOccupy