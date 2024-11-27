scoreboard players remove @s blinddelay 1
scoreboard players remove @s blindtime 1
scoreboard players reset @s[scores={blindtime=0}] blinddelay
scoreboard players reset @s[scores={blindtime=0}] blindtime

execute if entity @s[type=player,scores={blinddelay=..0}] run particle squid_ink ^ ^1.5 ^2 1.25 1.25 1.25 0 20 force @s
execute if entity @s[scores={blinddelay=..0}] run particle squid_ink ^ ^1.5 ^.7 0.2 0.2 0.2 0 5 force @a

#remove effect if we're in spectator mode
execute if entity @s[type=player,gamemode=!adventure] run scoreboard players set @s blindtime 0