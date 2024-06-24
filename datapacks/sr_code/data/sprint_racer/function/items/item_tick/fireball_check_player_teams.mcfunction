tag @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] add checkmyid

execute if entity @s[tag=itemCyan] run tag @e[tag=checkmyid,tag=playerOrange] add fireme
execute if entity @s[tag=!itemCyan] run tag @e[tag=checkmyid,tag=playerCyan] add fireme

scoreboard players operation @e[tag=fireme] attackerID = @s playerID
scoreboard players set @e[tag=fireme] attackTime 100
execute as @e[tag=fireme] unless entity @s[scores={burn=..999}] run scoreboard players set @s burn 0

tag @e[tag=fireme] remove fireme

tag @e[tag=checkmyid] remove checkmyid