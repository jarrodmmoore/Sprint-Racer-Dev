tag @e[tag=spawnOccupy] remove spawnOccupy

#time attack, players always start at the exact same pre-set point
execute as @e[tag=activeplayer] at @s run function sprint_racer:game_logic/7/find_playerstart_player

tag @e[tag=spawnOccupy] remove spawnOccupy