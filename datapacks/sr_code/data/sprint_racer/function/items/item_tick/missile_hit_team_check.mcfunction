scoreboard players operation #checkID value = @s playerID
execute if entity @s[tag=itemCyan] if entity @e[tag=activeplayer,tag=playerOrange,distance=..3] run scoreboard players set #hit value 1
execute if entity @s[tag=!itemCyan] if entity @e[tag=activeplayer,tag=playerCyan,distance=..3] run scoreboard players set #hit value 1
execute as @e[tag=activeplayer,distance=..3] if score @s playerID = #checkID value run scoreboard players set #hit value 1