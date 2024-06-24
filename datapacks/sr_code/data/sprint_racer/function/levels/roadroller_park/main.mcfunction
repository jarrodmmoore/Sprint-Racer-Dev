function sprint_racer:levels/roadroller_park/map

#stop ai from skipping the scripted sequence by accident
execute as @e[tag=ai,x=-445,y=139,z=-733,dx=6,dy=6,dz=6] unless entity @s[scores={scriptMove=1..}] run tp @s -450 139 -732

#reset if fallen into the goop
execute as @a[tag=playing,gamemode=adventure,scores={hp=1..},x=517,y=55,z=776,dx=140,dy=5,dz=140] at @s if block ~ ~-1 ~ black_stained_glass run function sprint_racer:levels/sakura_city/respawn_general

effect give @a night_vision 15 1 true