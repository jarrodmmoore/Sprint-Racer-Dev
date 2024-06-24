tp @s ~1 ~ ~ -90 ~

scoreboard players remove @s carCooldown 1
scoreboard players set @s[scores={carCooldown=..0,lifespan=2..}] lifespan 1

effect give @a[distance=..2,gamemode=adventure,tag=playing] instant_damage 1 1 true

effect give @e[distance=..2,tag=ai,tag=undead] instant_health 1 1 true
effect give @e[distance=..2,tag=ai,tag=!undead] instant_damage 1 1 true

execute positioned ~7 ~ ~2 run playsound minecraft:entity.minecart.riding master @a ~ ~ ~ .3 .7
execute positioned ~7 ~ ~2 run stopsound @a[distance=25..30] master minecraft:entity.minecart.riding