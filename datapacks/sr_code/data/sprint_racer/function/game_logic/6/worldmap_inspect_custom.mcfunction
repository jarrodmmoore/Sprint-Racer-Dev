scoreboard players operation #test value = @s wmCustomNum
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #test value run tag @s add wmCustomFocus
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #test value run tag @s add wmCustomFocus

execute as @e[tag=wmCustomFocus,type=armor_stand,limit=1] run function sprint_racer:levels/_custom_general/medal_times

tag @e[type=armor_stand,tag=wmCustomFocus] remove wmCustomFocus