#vroom

scoreboard players add @s age 1
scoreboard players set @s[scores={age=6..}] age -14
#UUUUU
#DDDDDDDDDD
#UUUUU
execute if score @s age matches -4..5 run tp @s ^ ^ ^1 ~ ~1
execute if score @s age matches -14..-5 run tp @s ^ ^ ^1 ~ ~-1


#effect give @a[distance=..2,gamemode=adventure,tag=playing] instant_damage 1 1 true

#effect give @e[distance=..2,tag=ai,tag=undead] instant_health 1 1 true
#effect give @e[distance=..2,tag=ai,tag=!undead] instant_damage 1 1 true

#execute positioned ~7 ~ ~2 run playsound minecraft:entity.minecart.riding master @a ~ ~ ~ .3 .7
#execute positioned ~7 ~ ~2 run stopsound @a[distance=25..30] master minecraft:entity.minecart.riding


#die if we're not in the track area
execute if block ~ 0 ~ air run kill @s