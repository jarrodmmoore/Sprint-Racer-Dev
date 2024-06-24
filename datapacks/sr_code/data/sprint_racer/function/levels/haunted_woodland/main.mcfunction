function sprint_racer:levels/haunted_woodland/map

scoreboard players set @a[tag=playing] mapZone 0
scoreboard players set @a[tag=playing,x=48,y=10,z=1619,dx=120,dy=44,dz=140] mapZone 1

scoreboard players set @a[tag=playing,gamemode=adventure,x=0,y=58,z=1600,dx=155,dy=50,dz=126,scores={check=2}] recDirection 10
scoreboard players set @a[tag=playing,x=48,y=10,z=1619,dx=120,dy=44,dz=140,scores={check=6..}] recDirection 10