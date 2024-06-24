#used with "fastmissiles" cheat

tag @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] add checkmyid
execute if score global gameState matches 8 run tag @e[tag=taTargetCore,distance=..2] add checkmyid

scoreboard players set #hit value 0
execute as @e[tag=checkmyid] unless score @s playerID = #missileID value run scoreboard players set #hit value 1
tag @e[tag=checkmyid] remove checkmyid

execute if score #hit value matches 1 run function sprint_racer:items/item_tick/missile_explode_fake