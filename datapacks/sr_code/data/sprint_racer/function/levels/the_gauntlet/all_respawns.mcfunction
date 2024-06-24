#reset players who fly too far away (can't do nav information on this track because the lower layers of the world are exposed)
execute as @a[tag=playing,scores={hp=1..}] at @s unless entity @e[tag=activator,tag=node,distance=..150] run function sprint_racer:levels/the_gauntlet/respawn_general
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=10,dz=600,scores={hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text

#resets for specific areas
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=120,dz=600,scores={check=1..2,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
execute as @a[tag=playing,gamemode=adventure,x=984,y=136,z=1975,dx=80,dy=6,dz=80,scores={check=4,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
execute as @a[tag=playing,gamemode=adventure,x=963,y=144,z=1975,dx=15,dy=1,dz=15,scores={check=4..6,hp=1..},nbt={OnGround:1b}] at @s run tp @s 980 147 1980.01 90 0
execute as @a[tag=playing,gamemode=adventure,x=937,y=157,z=1996,dx=34,dy=2,dz=68,scores={check=6,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=100,dz=600,scores={check=7..8,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=120,dz=600,scores={check=13,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general
execute as @a[tag=playing,gamemode=adventure,nbt={OnGround:1b},scores={timeSinceCheck=40..,resetCooldown=..1,check=14,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general
execute as @a[tag=playing,gamemode=adventure,x=1068,y=104,z=2269,dx=100,dy=10,dz=100,scores={check=14,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general
execute as @a[tag=playing,gamemode=adventure,x=1068,y=104,z=2269,dx=60,dy=80,dz=100,scores={check=14,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=60,dz=600,scores={check=15,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
execute as @a[tag=playing,gamemode=adventure,x=898,y=0,z=1942,dx=600,dy=80,dz=600,scores={check=16,hp=1..}] at @s run function sprint_racer:levels/the_gauntlet/respawn_general_no_text
