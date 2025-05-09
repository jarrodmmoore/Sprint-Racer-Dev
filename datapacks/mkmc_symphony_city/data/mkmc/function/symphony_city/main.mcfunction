#this function is run 20 times per second (every game tick) while your track is being played.

#Time attack per checkpoint minimaps. Code is borrowed from the track Space Colony Luna.
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=timeattack] run function mkmc:symphony_city/map

#kill enderpearls that fall below the track
execute at @e[type=minecraft:ender_pearl] if block ~ ~-15 ~ minecraft:water run kill @e[type=minecraft:ender_pearl,dy=1]