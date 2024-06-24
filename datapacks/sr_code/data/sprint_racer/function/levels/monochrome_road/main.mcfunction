function sprint_racer:levels/monochrome_road/map

#night vision
effect give @a night_vision 15 5 true

#van falls into the abyss
execute as @a[gamemode=adventure,scores={elytraTimer=..0,coord_y=..1150000}] run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={hitboxHP=1000..}] at @s if block ~ ~-1 ~ black_concrete run data merge entity @s {Health:"900b"}

#top 4 place makes rainbows lap 2 and above
execute as @e[limit=4,tag=activeplayer,scores={racePosDisplay=1..4,lap=2..}] at @s run function sprint_racer:levels/monochrome_road/rainbow_paint