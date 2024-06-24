scoreboard players set @e[tag=w,tag=randomPresetB,scores={gamemodePresetB=3..}] gamemodePresetB 0
tag @e[tag=w,scores={gamemodePresetB=..2}] remove randomPresetB
tag @e[tag=w,scores={gamemodePresetB=3..}] add randomPresetB
scoreboard players add @e[tag=w,tag=!randomPresetB] gamemodePresetB 1

function sprint_racer:game_logic/0/props/spawn_gamemode_preview_b