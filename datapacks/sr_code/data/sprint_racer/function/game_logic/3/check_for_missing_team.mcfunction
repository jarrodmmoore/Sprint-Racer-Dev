scoreboard players set #found_human value 0
execute if entity @a[tag=activeplayer] run scoreboard players set #found_human value 1

execute if entity @s[tag=!allowAIfinish] if entity @e[tag=activeplayer,tag=playerOrange,limit=1] if entity @e[tag=activeplayer,tag=playerCyan,limit=1] if score #found_human value matches 1 run scoreboard players set @s timeOut 0
execute if entity @s[tag=allowAIfinish] if entity @e[tag=activeplayer,tag=playerOrange,limit=1] if entity @e[tag=activeplayer,tag=playerCyan,limit=1] run scoreboard players set @s timeOut 0
