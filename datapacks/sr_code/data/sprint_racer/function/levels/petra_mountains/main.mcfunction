function sprint_racer:levels/petra_mountains/map

scoreboard players set @a[tag=playing,gamemode=adventure,x=796,y=74,z=1139,dx=40,dy=100,dz=22] recDirection 3
execute as @a[tag=playing,gamemode=adventure,x=796,y=50,z=1139,dx=55,dy=20,dz=22,scores={check=2}] at @s run function sprint_racer:levels/petra_mountains/respawn1
execute as @a[tag=playing,gamemode=adventure,x=885,y=59,z=1115,dx=50,dy=18,dz=120,scores={check=2}] at @s run function sprint_racer:levels/petra_mountains/respawn2

execute as @e[tag=node,tag=jumpboost,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=activeplayer,distance=..2] moveSpeed 10000
execute as @e[tag=node,tag=jumpboost,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=activeplayer,distance=..2,scores={hitstun=1..}] hitstun 0