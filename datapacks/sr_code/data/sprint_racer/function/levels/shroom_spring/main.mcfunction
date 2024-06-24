function sprint_racer:levels/shroom_spring/map

#reset if we fall in the drink during checkpoint 2
execute as @a[gamemode=adventure,scores={check=2}] at @s if block ~ ~ ~ water unless block ~ 5 ~ white_wool run function sprint_racer:levels/sakura_city/respawn_general

#reset if we fall off the cliff in the cave
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ black_stained_glass run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai] at @s if block ~ ~-1 ~ black_stained_glass run function sprint_racer:ai/general/die