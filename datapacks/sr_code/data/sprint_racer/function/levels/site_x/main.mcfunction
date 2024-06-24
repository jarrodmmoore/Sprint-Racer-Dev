function sprint_racer:levels/site_x/map

#reset in oil
execute as @a[tag=playing,gamemode=adventure,scores={hp=1..},nbt={OnGround:1b}] at @s if block ~ ~-1 ~ black_stained_glass run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={hitboxHP=1000..}] at @s if block ~ ~-1 ~ black_stained_glass run function sprint_racer:ai/general/die