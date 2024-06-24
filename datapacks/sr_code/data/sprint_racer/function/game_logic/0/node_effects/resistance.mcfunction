#short duration (2s)
execute if entity @s[tag=!resLong] run effect give @e[gamemode=!spectator,distance=..2] resistance 2 254 false
execute if entity @s[tag=!resLong] run scoreboard players set @e[gamemode=!spectator,distance=..2] nResist 40

#long duration (4s) (takes priority over short)
execute if entity @s[tag=resLong] run effect give @e[gamemode=!spectator,distance=..2] resistance 4 255 false
execute if entity @s[tag=resLong] run scoreboard players set @e[gamemode=!spectator,distance=..2] nResist 80