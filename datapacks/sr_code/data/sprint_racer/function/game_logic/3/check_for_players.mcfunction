execute if entity @s[tag=allowAIfinish] run tag @e[limit=1,tag=activeplayer] add testForPlayers
execute if entity @s[tag=!allowAIfinish] run tag @a[limit=1,tag=activeplayer] add testForPlayers
execute as @e[tag=testForPlayers,limit=1] if entity @e[tag=activeplayer,tag=!testForPlayers] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] timeOut 0
tag @e[tag=testForPlayers] remove testForPlayers