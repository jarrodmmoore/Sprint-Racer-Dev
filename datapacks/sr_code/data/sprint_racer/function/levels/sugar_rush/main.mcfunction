function sprint_racer:levels/sugar_rush/map

#die if fallen down
execute as @a[gamemode=adventure,tag=playing] if entity @s[nbt={OnGround:1b},scores={coord_y=..1450000}] run kill @s
execute as @e[tag=ai] if entity @s[nbt={OnGround:1b},scores={coord_y=..1450000}] run function sprint_racer:ai/general/die