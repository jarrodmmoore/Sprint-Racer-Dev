scoreboard players operation #test value = @s wmCustomNum
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] if score @s customTrackID = #test value run tag @s add wmCustomFocus
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] if score @s customTrackBID = #test value run tag @s add wmCustomFocus
title @s actionbar ["",{translate:"sr.lobby.custom_track",color:"white",bold:true},{selector:"@e[tag=wmCustomFocus,type=armor_stand,limit=1]"}]
tag @e[type=armor_stand,tag=wmCustomFocus] remove wmCustomFocus

#exit out if not free roam mode
execute unless score global gameState matches 5 run return 0

#set actionbar times for free roam mode
scoreboard players set @s[scores={actionbarState=..5}] actionbarState2 3
scoreboard players set @s[scores={actionbarState=..5}] actionbarState 5