scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lastGamemode 6

scoreboard players add @a lastGamemode 0
scoreboard players set @a math 0
execute as @a run scoreboard players operation @s math = @s lastGamemode
execute as @a run scoreboard players operation @s math -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] lastGamemode

#player recently played a different gamemode or just joined? let them know what they're playing now in case they missed it
execute as @a[tag=!minChat] unless entity @s[scores={math=0}] run function sprint_racer_language:_dlc_1/gamemode_info/time_attack_battle

scoreboard players set @a lastGamemode 6