function sprint_racer:levels/suspension_mountain/map

tag @e[tag=darkHUD] remove darkHUD
tag @a[gamemode=adventure,scores={check=6..}] add darkHUD

#kill players who fall down
#most of this got cut later
#execute unless entity @e[tag=w,scores={gameTime=100000..}] run tag @a[tag=playing,tag=grounded,nbt={OnGround:0b}] remove grounded
#execute unless entity @e[tag=w,scores={gameState=7..8}] if entity @e[tag=w,scores={gameTime=160..}] as @a[tag=playing,gamemode=adventure] at @s if block ~ 0 ~ cyan_wool run kill @s[scores={hp=1..,airTime=15..},nbt={OnGround:1b}]
#execute unless entity @e[tag=w,scores={gameState=7..8}] if entity @e[tag=w,scores={gameTime=160..}] as @a[tag=playing,gamemode=adventure,scores={recDirection=10}] at @s run kill @s[scores={hp=1..,airTime=15..},nbt={OnGround:1b}]
#execute unless entity @e[tag=w,scores={gameState=7..8}] if entity @e[tag=w,scores={gameTime=160..}] as @a[tag=playing,gamemode=adventure,scores={recDirection=10}] at @s if block ~ ~ ~ water run kill @s[scores={hp=1..}]
execute if entity @e[tag=w,scores={gameTime=..160}] run scoreboard players set @a airTime 0
execute if entity @e[tag=w,scores={gameTime=160..}] run scoreboard players add @a airTime 1
execute unless entity @e[tag=w,scores={gameTime=100000..}] run scoreboard players set @a[tag=playing,nbt={OnGround:1b}] airTime 0
execute unless entity @e[tag=w,scores={gameTime=100000..}] as @a[tag=playing] at @s if block ~ ~ ~ water run scoreboard players set @s airTime 0
#execute if entity @e[tag=w,scores={gameTime=100000..}] run tag @a[tag=grounded] remove grounded

#quickly reset players who fall into holes
execute as @a[gamemode=adventure,x=791,y=58,z=800,dx=6,dy=5,dz=5,scores={check=0..1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn1
execute as @a[gamemode=adventure,x=782,y=59,z=844,dx=9,dy=5,dz=18,scores={check=0..1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn2
execute as @a[gamemode=adventure,x=853,y=70,z=884,dx=10,dy=5,dz=5,scores={check=0..1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn3
execute as @a[gamemode=adventure,x=865,y=65,z=863,dx=15,dy=11,dz=14,scores={check=0..1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn4
execute as @a[gamemode=adventure,x=865,y=65,z=841,dx=15,dy=11,dz=14,scores={check=1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn5
execute as @a[gamemode=adventure,x=865,y=65,z=820,dx=15,dy=11,dz=14,scores={check=1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn6
execute as @a[gamemode=adventure,x=865,y=65,z=799,dx=15,dy=11,dz=14,scores={check=1,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn7
execute as @a[gamemode=adventure,x=830,y=71,z=781,dx=12,dy=8,dz=9,scores={check=1..2,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn8
execute as @a[gamemode=adventure,x=785,y=71,z=862,dx=20,dy=14,dz=20,scores={check=2..3,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn9
execute as @a[gamemode=adventure,x=860,y=85,z=822,dx=7,dy=9,dz=12,scores={check=3..4,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn10
execute as @a[gamemode=adventure,x=832,y=94,z=791,dx=11,dy=4,dz=11,scores={check=4,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn11
execute as @a[gamemode=adventure,x=808,y=90,z=804,dx=9,dy=9,dz=15,scores={check=4..5,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn12
execute as @a[gamemode=adventure,x=814,y=114,z=834,dx=10,dy=7,dz=11,scores={check=6..7,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn13
execute as @a[gamemode=adventure,x=845,y=115,z=820,dx=9,dy=8,dz=14,scores={check=7..8,hp=1..,airTime=..1}] at @s run function sprint_racer:levels/suspension_mountain/respawn14