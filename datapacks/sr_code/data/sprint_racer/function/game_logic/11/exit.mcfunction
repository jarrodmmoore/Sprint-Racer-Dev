function sprint_racer_language:_dlc_3/gameplay/grand_prix_exit
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn

effect clear @a
clear @a
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 0
#function sprint_racer:game_logic/0/props/summon_props
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/0/_initialize

tp @s[type=player] 1629 80 365 90 0