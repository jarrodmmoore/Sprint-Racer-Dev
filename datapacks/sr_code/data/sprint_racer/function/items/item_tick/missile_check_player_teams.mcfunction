#used with "fastmissiles" cheat

tag @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] add checkmyid
execute if score global gameState matches 8 run tag @e[tag=taTargetCore,type=magma_cube,distance=..2] add checkmyid

execute if entity @s[tag=missile,tag=itemCyan] if entity @e[tag=checkmyid,tag=!playerCyan] run function sprint_racer:items/item_tick/missile_explode_fake_teams
execute if entity @s[tag=missile,tag=!itemCyan] if entity @e[tag=checkmyid,tag=!playerOrange] run function sprint_racer:items/item_tick/missile_explode_fake_teams

tag @e[tag=checkmyid] remove checkmyid