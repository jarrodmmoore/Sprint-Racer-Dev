tag @s remove p_nearby
execute as @a[gamemode=adventure,tag=playing,distance=..6] at @s rotated ~ 0 positioned ^ ^ ^2 run tag @e[tag=ai,distance=..3] add p_nearby

execute if entity @s[tag=p_nearby] at @s run function sprint_racer:ai/race/invis_cram_hide
execute if entity @s[tag=!p_nearby,tag=invis_cram] at @s run function sprint_racer:ai/race/invis_cram_show