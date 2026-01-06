#third person
execute rotated ~ 0 run tp @e[tag=c_cam_follow,limit=1,sort=nearest,type=item_display] ^ ^1.8 ^-4 ~ ~

execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_follow,limit=1,sort=nearest,type=item_display] @s