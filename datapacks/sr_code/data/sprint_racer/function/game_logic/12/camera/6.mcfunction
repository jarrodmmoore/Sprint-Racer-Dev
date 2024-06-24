#finds the nearest "camera point" and spectates it while making it face our target
execute as @e[tag=c_cam_dynamic,limit=1,sort=nearest,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=cam_self] feet

execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_dynamic,limit=1,sort=nearest,type=armor_stand] @s