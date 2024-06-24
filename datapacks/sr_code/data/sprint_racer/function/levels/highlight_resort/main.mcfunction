function sprint_racer:levels/highlight_resort/map

#respawn if we fall into the water below
execute as @a[gamemode=adventure,scores={coord_y=..610000}] at @s if block ~ ~-.2 ~ water run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..610000}] at @s if block ~ ~-.2 ~ water run kill @s

#cp2-3, reset if we're in water at all
execute as @a[gamemode=adventure,scores={check=1..2}] at @s if block ~ ~-.2 ~ water run function sprint_racer:levels/sakura_city/respawn_general