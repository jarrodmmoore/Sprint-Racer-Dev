scoreboard players set @e[tag=w,type=armor_stand] lastGamemode 7

scoreboard players add @a lastGamemode 0
scoreboard players set @a math 0
execute as @a run scoreboard players operation @s math = @s lastGamemode
execute as @a run scoreboard players operation @s math -= @e[tag=w,limit=1] lastGamemode

#player recently played a different gamemode or just joined? let them know what they're playing now in case they missed it
execute as @a[tag=!minChat] unless entity @s[scores={math=0}] run function sprint_racer_language:_dlc_1/gamemode_info/gauntlet_track

scoreboard players set @a lastGamemode 7