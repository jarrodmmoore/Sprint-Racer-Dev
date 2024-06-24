#short
execute if entity @s[tag=elytraShort] run tag @e[tag=activeplayer,scores={elytraTimer=..0},distance=..2] add elytraShort

#medium
execute if entity @s[tag=elytraMed] run tag @e[tag=activeplayer,scores={elytraTimer=..0},distance=..2] add elytraMed

#long
execute if entity @s[tag=elytraHigh] run tag @e[tag=activeplayer,scores={elytraTimer=..0},distance=..2] add elytraLong


execute as @e[tag=playing,gamemode=!spectator,scores={elytraTimer=..0},distance=..2] at @s run function sprint_racer:items/item_tick/equip_elytra_pad
scoreboard players set @e[tag=ai,scores={elytraTimer=..0},distance=..2] elytraTimer 1