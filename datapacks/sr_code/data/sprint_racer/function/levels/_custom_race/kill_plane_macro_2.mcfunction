#race mode: force reset

#get y coordinate
execute as @a[gamemode=adventure,tag=playing] store result score @s math run data get entity @s Pos[1]
execute as @e[tag=ai] store result score @s math run data get entity @s Pos[1]

#now check players' y coordinate
$execute as @a[gamemode=adventure,tag=playing] if score @s math matches $(kill_plane) run function sprint_racer:levels/sakura_city/respawn_general
$execute as @e[tag=ai] if score @s math matches $(kill_plane) run function sprint_racer:ai/general/die