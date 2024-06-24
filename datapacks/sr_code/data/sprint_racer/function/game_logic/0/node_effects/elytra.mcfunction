#short
execute if entity @s[tag=elytraShort] run tag @e[gamemode=!spectator,scores={elytraTimer=..0},distance=..2] add elytraShort

#medium
execute if entity @s[tag=elytraMed] run tag @e[gamemode=!spectator,scores={elytraTimer=..0},distance=..2] add elytraMed

#long
execute if entity @s[tag=elytraHigh] run tag @e[gamemode=!spectator,scores={elytraTimer=..0},distance=..2] add elytraLong


execute as @e[gamemode=!spectator,scores={elytraTimer=..0},distance=..2] at @s run function sprint_racer:items/item_tick/equip_elytra_pad