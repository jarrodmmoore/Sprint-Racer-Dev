scoreboard players set @s afkTime 0

tag @s remove musicSel
stopsound @s record
scoreboard players set @s musicTime 0
scoreboard players reset @s BGMcontrol

scoreboard players set @s soundtrack 2
tag @s add musicDef
scoreboard players operation @s BGMtrack = @e[limit=1,type=armor_stand,tag=currentBGM] rNumber
execute unless entity @e[limit=1,type=armor_stand,tag=currentBGM] run scoreboard players set @s BGMtrack 0
function sprint_racer_language:_dlc_4/music_enabled_alternate
function sprint_racer_language:_dlc_2/music/radio_menu

scoreboard players reset @s useCustomSoundtrack
scoreboard players enable @s useCustomSoundtrack