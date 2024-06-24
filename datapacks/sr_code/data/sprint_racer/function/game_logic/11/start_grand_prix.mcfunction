function sprint_racer_language:_dlc_3/gameplay/grand_prix_started
bossbar set freeroam players

scoreboard players set #varyTeleport value 0
execute as @a at @s run function sprint_racer:game_logic/0/goto_spawn

effect clear @a
clear @a
#scoreboard players set @e[tag=w,type=armor_stand] gameState 0
#function sprint_racer:game_logic/0/props/summon_props

#just in case...
tag @e[tag=chosenTrack] remove chosenTrack

#cannot change default gamemode presets during gp (avoids bugs)
setblock 1615 81 369 air
setblock 1611 81 369 air

#force un-ready
scoreboard players set @e[tag=w,type=armor_stand] readyState 0
tag @a[tag=readyup] remove readyup

scoreboard players set @e[tag=w,type=armor_stand] gpRound 1
tag @e[tag=w,type=armor_stand] add grandprix
scoreboard players set grandprix gameState 1

#save gamemode preset
scoreboard players operation @e[tag=w,type=armor_stand,tag=grandprix] gamePresetA_save = @e[tag=w,type=armor_stand,limit=1] gamemodePresetA
scoreboard players operation @e[tag=w,type=armor_stand,tag=grandprix] gamePresetB_save = @e[tag=w,type=armor_stand,limit=1] gamemodePresetB

#CLEAR POINTS
function sprint_racer:game_logic/0/clear_points

scoreboard objectives remove gpPoints
scoreboard objectives add gpPoints dummy

function sprint_racer:game_logic/0/grand_prix_peek
function sprint_racer:game_logic/0/_initialize