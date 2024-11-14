#battle mode: just straight up kill stuff

#get y coordinate
execute as @a[gamemode=adventure,tag=playing] store result score @s math run data get entity @s Pos[1]
execute as @e[tag=ai] store result score @s math run data get entity @s Pos[1]

#now check players' y coordinate
$execute as @a[gamemode=adventure,tag=playing] if score @s math matches $(kill_plane) run kill @s
$execute as @e[tag=ai] if score @s math matches $(kill_plane) run function sprint_racer:ai/general/die