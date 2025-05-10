#this function is run 20 times per second (every game tick) while your track is being played.

#cannon effects
execute as @e[tag=activeplayer] at @s if block ~ ~-4 ~ brown_concrete run particle minecraft:explosion_emitter 10516 79 -10868
execute as @e[tag=activeplayer] at @s if block ~ ~-4 ~ brown_concrete run function sprint_racer:explode_sound_effect {volume:2,pitch:".75"}

#kill enderpearls that fall deep in the water
execute at @e[type=minecraft:ender_pearl] if block ~ ~1 ~ minecraft:water run kill @e[type=minecraft:ender_pearl,dy=1]