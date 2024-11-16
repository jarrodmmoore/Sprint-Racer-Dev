function sprint_racer:levels/toy_tussle/map

#night vision
effect give @a night_vision 15 5 true

#damage if we touch coal blocks
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ ~-.25 ~ coal_block run damage @s 1 wither at ~ ~-1 ~
execute as @e[tag=ai] at @s if block ~ ~-.25 ~ coal_block run damage @s 1 wither at ~ ~-1 ~

#die if we touch the ground while out of bounds
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ 0 ~ red_wool unless block ~ 1 ~ magenta_wool if entity @s[nbt={OnGround:1b}] run kill @s
execute as @e[tag=ai] at @s if block ~ 0 ~ red_wool if entity @s[nbt={OnGround:1b}] run function sprint_racer:ai/general/die