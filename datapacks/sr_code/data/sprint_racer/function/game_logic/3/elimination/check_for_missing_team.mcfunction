tag @e[limit=1,tag=activeplayer,tag=playerCyan] add testForPlayers
execute as @e[tag=testForPlayers,limit=1] if entity @e[tag=activeplayer,tag=!testForPlayers,tag=playerOrange] run scoreboard players set @e[tag=w,type=armor_stand] timeOut 0
tag @e[tag=testForPlayers] remove testForPlayers