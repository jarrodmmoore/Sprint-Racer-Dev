function sprint_racer:levels/gummi_gorge/map

#teleporter
execute as @e[tag=activeplayer] at @s if block ~ ~-.5 ~ red_glazed_terracotta run function sprint_racer:levels/gummi_gorge/artificial_teleport

#handle cross-team sabotage
execute if score #ggTrapC1 value matches 1.. run scoreboard players remove #ggTrapC1 value 1
execute if score #ggTrapC1 value matches 1 run function sprint_racer:levels/gummi_gorge/clone_crimson1_solid
execute if score #ggTrapC2 value matches 1.. run scoreboard players remove #ggTrapC2 value 1
execute if score #ggTrapC2 value matches 1 run function sprint_racer:levels/gummi_gorge/clone_crimson2_solid
execute if score #ggTrapW1 value matches 1.. run scoreboard players remove #ggTrapW1 value 1
execute if score #ggTrapW1 value matches 1 run function sprint_racer:levels/gummi_gorge/clone_warped1_solid
execute if score #ggTrapW2 value matches 1.. run scoreboard players remove #ggTrapW2 value 1
execute if score #ggTrapW2 value matches 1 run function sprint_racer:levels/gummi_gorge/clone_warped2_solid

#reset if fallen down
execute as @a[gamemode=adventure,scores={coord_y=..430000}] at @s if block ~ ~ ~ water run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..430000}] at @s if block ~ ~ ~ water run function sprint_racer:ai/general/die