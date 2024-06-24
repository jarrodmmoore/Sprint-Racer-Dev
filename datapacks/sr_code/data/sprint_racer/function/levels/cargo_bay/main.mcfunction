function sprint_racer:levels/cargo_bay/map

#reset when in water i guess
execute as @a[tag=playing,gamemode=adventure,scores={hp=1..}] at @s if block ~ ~ ~ water run function sprint_racer:levels/sakura_city/respawn_general

