function sprint_racer:levels/sacred_village/map

#reset upon falling into water (check 2 only)
execute as @a[gamemode=adventure,x=-110,y=59,z=-1522,distance=10..,scores={check=2}] at @s if block ~ ~ ~ water if block ~ ~-5 ~ water run function sprint_racer:levels/sacred_village/respawn1
execute as @e[tag=ai,scores={check=2,hitboxHP=1000..}] at @s if block ~ ~ ~ water if block ~ ~-5 ~ water run scoreboard players set @s aiStuckTime 200
