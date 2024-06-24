#third person tp reverse
execute rotated ~ 0 run tp @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] ^ ^2 ^5 ~180 ~20

execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_follow,limit=1,sort=nearest,type=armor_stand] @s