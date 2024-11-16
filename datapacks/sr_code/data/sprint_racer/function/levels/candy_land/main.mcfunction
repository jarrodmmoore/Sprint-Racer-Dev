function sprint_racer:levels/candy_land/map

#reset if we fall down in the sucker parkour section
execute as @a[gamemode=adventure,x=-1284,y=74,z=-3040,dx=51,dy=12,dz=51,scores={check=2..3,hp=1..}] if entity @s[nbt={OnGround:1b}] at @s run function sprint_racer:levels/sakura_city/respawn_general

#reset if we agustus gloop ourselves into the chocolate river
execute as @a[gamemode=adventure] at @s if block ~ ~-.25 ~ brown_stained_glass run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai] at @s if block ~ ~-.25 ~ brown_stained_glass run function sprint_racer:ai/general/die

#sound for bouncing during the scripted sequence
execute unless score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=1}] if entity @s[x=-1258,y=81,z=-2973,distance=..3] positioned -1258 81 -2973 run function sprint_racer:levels/candy_land/bounce_noise
execute if score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=1..2}] if entity @s[x=-1258,y=81,z=-2973,distance=..3] positioned -1258 81 -2973 run function sprint_racer:levels/candy_land/bounce_noise
