function sprint_racer_language:_dlc_3/gameplay/grand_prix_cancelled
bossbar set freeroam players
tp @a 1550 89 406
effect clear @a
clear @a

#CLEAR POINTS
function sprint_racer:game_logic/0/clear_points

#can change default gamemode presets again
setblock 1615 81 369 stone_button[facing=north]
setblock 1611 81 369 stone_button[facing=north]

#restore gamemodePresets from before
scoreboard players operation @e[tag=w,type=armor_stand,tag=grandprix] gamemodePresetA = @e[tag=w,type=armor_stand,limit=1] gamePresetA_save
scoreboard players operation @e[tag=w,type=armor_stand,tag=grandprix] gamemodePresetB = @e[tag=w,type=armor_stand,limit=1] gamePresetB_save

#scoreboard players set @e[tag=w,type=armor_stand] gameState 0
scoreboard players set #requestSaveState value 0

tag @e[tag=w,type=armor_stand] remove grandprix
scoreboard players set grandprix gameState 0

function sprint_racer:game_logic/0/_initialize
function sprint_racer:game_logic/0/props/summon_props