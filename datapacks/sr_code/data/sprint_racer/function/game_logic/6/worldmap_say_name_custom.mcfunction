scoreboard players operation #test value = @s wmCustomNum
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #test value run tag @s add wmCustomFocus
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #test value run tag @s add wmCustomFocus

function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/_custom_general

tag @e[type=armor_stand,tag=wmCustomFocus] remove wmCustomFocus