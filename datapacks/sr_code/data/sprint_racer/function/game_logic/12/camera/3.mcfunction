#third person fixed south
execute rotated ~ 0 run tp @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] ~ ~ ~-5 0 0

execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] @s