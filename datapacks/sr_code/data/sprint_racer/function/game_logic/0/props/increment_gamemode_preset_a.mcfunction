scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetA,scores={gamemodePresetA=3..}] gamemodePresetA 0
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=..2}] remove randomPresetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=3..}] add randomPresetA
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA] gamemodePresetA 1

function sprint_racer:game_logic/0/props/spawn_gamemode_preview_a