tag @s remove musicDef
tag @s add musicSel

scoreboard players set @s afkTime 0

scoreboard players remove @s BGMtrack 1
execute if entity @s[scores={BGMtrack=..0}] run function sprint_racer:music/player/control_set_default

scoreboard players set @s musicTime 3