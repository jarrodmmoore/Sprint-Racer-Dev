#this function is run 20 times per second (every game tick) while your track is being played.


#players get jump boost when on the terracotta bits
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ #minecraft:terracotta run effect give @s jump_boost 1 4 false
execute as @e[tag=ai] at @s if block ~ ~-1 ~ #minecraft:terracotta run function mkmc:cookie_land/ai_jump_boost
