function sprint_racer:levels/pyramid_village/map

execute as @a[tag=playing,gamemode=adventure,scores={hp=1..}] if block ~ ~ ~ structure_void run kill @s