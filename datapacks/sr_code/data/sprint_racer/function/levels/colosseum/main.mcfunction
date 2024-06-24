function sprint_racer:levels/colosseum/map

execute if entity @e[tag=w,scores={gameTime=260..}] as @a[gamemode=adventure,tag=playing,scores={hp=1..,coord_y=..1000000}] unless entity @s[scores={death=0..}] run kill @s