function sprint_racer:levels/end_core/map

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=260..}] as @a[gamemode=adventure,tag=playing,scores={hp=1..,coord_y=..800000}] unless entity @s[scores={death=0..}] run kill @s