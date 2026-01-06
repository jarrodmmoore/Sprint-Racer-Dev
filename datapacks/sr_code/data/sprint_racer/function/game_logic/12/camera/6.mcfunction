#all dynamic cams should face camera target
execute as @e[tag=cam_self,limit=1] at @s run summon marker ~ ~1 ~ {UUID:[I;2,20,200,2000]}
execute as @e[tag=c_cam_dynamic,type=item_display] at @s run tp @s ~ ~ ~ facing entity 00000002-0000-0014-0000-00c8000007d0 feet
kill 00000002-0000-0014-0000-00c8000007d0

#finds the nearest "camera point" and spectates it
execute as @a[gamemode=spectator] run spectate @e[tag=c_cam_dynamic,limit=1,sort=nearest,type=item_display] @s