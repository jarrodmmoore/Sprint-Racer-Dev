function sprint_racer_language:_dlc_1/gameplay/custom_manage_ended
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn

effect clear @a
clear @a
gamemode adventure @a
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 0
#function sprint_racer:game_logic/0/props/summon_props
function sprint_racer:game_logic/0/_initialize