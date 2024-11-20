function sprint_racer:levels/greenhouse/map

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=260..}] as @a[gamemode=adventure,tag=playing,scores={hp=1..,coord_y=..1500000}] unless entity @s[scores={death=0..}] run kill @s

#tag=ghousefan

tag @e[tag=ghousefly] remove ghousefly

execute as @e[tag=ghousefan] at @s positioned ~.5 ~.1 ~.5 if entity @a[distance=..10] run particle cloud ~ ~ ~ 0.35 0 0.35 .1 1 normal
execute as @e[tag=ghousefan] at @s positioned ~-1 ~1 ~-1 run tag @e[tag=activeplayer,dx=2,dy=6,dz=2] add ghousefly

effect give @e[tag=ghousefly] levitation 1 3 true
effect clear @e[tag=activeplayer,tag=!ghousefly,scores={elytraTimer=..0}] levitation


tag @e[tag=ghousefly] remove ghousefly