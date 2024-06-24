function sprint_racer:levels/seaside_village/map

scoreboard players set @a mapZone 0
scoreboard players set @a[tag=playing,gamemode=!spectator,x=125,y=40,z=516,dx=120,dy=14,dz=120] mapZone 1

scoreboard players set @a[x=157,y=52,z=522,dx=13,dy=13,dz=10] recDirection 0

#force AI to jump at that one pad
execute as @e[tag=ai,distance=..3,x=175,y=43,z=629] run function sprint_racer:levels/seaside_village/ai_force_jump_zone

#clear jump boost after the jump so the AI doesn't kill itself with a massively high jump
execute as @e[tag=ai,distance=..3,x=175,y=59,z=629] run scoreboard players set @s aiJBIntensity 1