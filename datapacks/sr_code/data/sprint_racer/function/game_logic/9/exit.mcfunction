function sprint_racer_language:_dlc_1/gameplay/tp_ended
bossbar set freeroam players
execute as @a run function sprint_racer:game_logic/0/goto_spawn
effect clear @a
gamemode adventure @a
scoreboard players set @e[tag=w,type=armor_stand] gameState 0
function sprint_racer:game_logic/0/props/summon_props