function sprint_racer:levels/frostbite_caverns/map

##cannon blasts
#stone cannon
execute unless score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=4}] at @s if block ~ 52 ~ structure_void positioned 1132 52 -1572 run function sprint_racer:levels/frostbite_caverns/cannon_blast
execute if score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=3..4}] at @s if block ~ 52 ~ structure_void positioned 1132 52 -1572 run function sprint_racer:levels/frostbite_caverns/cannon_blast
#ice cannon
execute unless score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=1}] at @s if block ~ 70 ~ structure_void positioned 1045 65 -1649 run function sprint_racer:levels/frostbite_caverns/cannon_blast
execute if score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=1..2}] at @s if block ~ 70 ~ structure_void positioned 1045 65 -1649 run function sprint_racer:levels/frostbite_caverns/cannon_blast

#reset when fallen down
execute as @a[tag=playing,gamemode=adventure,x=1084,y=10,z=-1664,dx=120,dy=30,dz=120] at @s run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,x=1084,y=10,z=-1664,dx=120,dy=30,dz=120] at @s run function sprint_racer:ai/general/die