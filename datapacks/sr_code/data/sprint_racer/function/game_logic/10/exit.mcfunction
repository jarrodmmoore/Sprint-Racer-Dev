function sprint_racer_language:_dlc_1/gameplay/custom_manage_ended
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn

#reload custom tracks next time we look at them...
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add wmCustomReload

effect clear @a
clear @a
gamemode adventure @a
#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameState 0
#function sprint_racer:game_logic/0/props/summon_props
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:game_logic/0/_initialize

tp @s[type=player] 1629 80 365 90 0