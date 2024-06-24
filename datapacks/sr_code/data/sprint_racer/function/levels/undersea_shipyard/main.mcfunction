function sprint_racer:levels/undersea_shipyard/map

effect give @a night_vision 15 1 true

#move the arrow sign after the first area is run through
execute unless block 435 42 -918 air if entity @e[tag=activeplayer,scores={check=3..}] run function sprint_racer:levels/undersea_shipyard/move_arrow_sign

#resets while in water
execute as @a[tag=playing,gamemode=adventure,scores={check=2}] at @s if block ~ ~ ~ water run function sprint_racer:levels/undersea_shipyard/water_reset
execute as @a[tag=playing,gamemode=adventure,scores={check=3}] at @s if block ~ ~ ~ water run function sprint_racer:levels/undersea_shipyard/water_reset_2
execute as @e[tag=ai] at @s if block ~ ~ ~ water run function sprint_racer:ai/general/die