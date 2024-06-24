scoreboard players set @e[tag=w,tag=randomPresetA,scores={gamemodePresetA=3..}] gamemodePresetA 0
tag @e[tag=w,scores={gamemodePresetA=..2}] remove randomPresetA
tag @e[tag=w,scores={gamemodePresetA=3..}] add randomPresetA
scoreboard players add @e[tag=w,tag=!randomPresetA] gamemodePresetA 1

function sprint_racer:game_logic/0/props/spawn_gamemode_preview_a