function sprint_racer_language:_dlc_3/gameplay/grand_prix_exit
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn

effect clear @a
clear @a
#scoreboard players set @e[tag=w,type=armor_stand] gameState 0
#function sprint_racer:game_logic/0/props/summon_props
function sprint_racer:game_logic/0/_initialize