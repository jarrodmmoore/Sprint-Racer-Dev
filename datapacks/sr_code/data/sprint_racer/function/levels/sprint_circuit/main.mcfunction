function sprint_racer:levels/sprint_circuit/map

execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-1 ~ green_concrete_powder run effect give @s slowness 1 1