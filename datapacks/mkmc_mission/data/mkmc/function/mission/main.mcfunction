#this function is run 20 times per second (every game tick) while your track is being played.

#animated piston arm thing
execute if score #missionPiston AIBC_dir4 matches 1.. run function mkmc:mission/piston_animation

#reset players that fall in the river by the start
execute as @a[gamemode=adventure,tag=playing,x=7081,y=52,z=-9455,dx=50,dy=20,dz=125] at @s if block ~ ~ ~ water run function sprint_racer:levels/sakura_city/respawn_general