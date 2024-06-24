#top down
execute rotated ~ 0 run tp @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] ~ ~20 ~ ~ 90

execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] @s