function sprint_racer_language:_dlc_1/gameplay/tp_ended
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn

effect clear @a
gamemode adventure @a
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 0
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/0/props/summon_props

tp @s[type=player] 1629 80 365 90 0