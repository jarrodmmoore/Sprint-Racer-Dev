tag @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] add checkmyid

scoreboard players operation #checkID value = @s playerID
execute as @e[tag=checkmyid] unless score @s playerID = #checkID value run tag @s add fireme

scoreboard players operation @e[tag=fireme] attackerID = @s playerID
scoreboard players set @e[tag=fireme] attackTime 100
execute as @e[tag=fireme] unless entity @s[scores={burn=..999}] run scoreboard players set @s burn 0

tag @e[tag=fireme] remove fireme

tag @e[tag=checkmyid] remove checkmyid