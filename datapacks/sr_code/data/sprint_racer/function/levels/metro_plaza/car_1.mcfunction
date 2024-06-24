tp @s ~1 ~ ~ 90 ~
#clone 51 76 1996 58 78 2000 ~ 86 ~
#fill -25 86 ~ -24 90 ~4 gray_wool replace
#fill 84 86 ~ 85 90 ~4 gray_wool replace
#fill 86 86 ~ 106 90 ~4 air replace
#clone 86 106 ~ 106 110 ~4 86 86 ~

scoreboard players remove @s carCooldown 1
scoreboard players set @s[scores={carCooldown=..0,lifespan=2..}] lifespan 1

effect give @a[distance=..2,gamemode=adventure,tag=playing] instant_damage 1 1 true

effect give @e[distance=..2,tag=ai,tag=undead] instant_health 1 1 true
effect give @e[distance=..2,tag=ai,tag=!undead] instant_damage 1 1 true

execute positioned ~7 ~ ~2 run playsound minecraft:entity.minecart.riding master @a ~ ~ ~ .3 .7
execute positioned ~7 ~ ~2 run stopsound @a[distance=25..30] master minecraft:entity.minecart.riding