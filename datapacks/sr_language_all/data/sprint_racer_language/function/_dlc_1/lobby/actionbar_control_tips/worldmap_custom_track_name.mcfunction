title @s actionbar ["",{"translate":"sr.lobby.custom_track","color":"white","bold":true},{"selector":"@e[tag=wmCustomFocus,limit=1]"}]

#exit out if not free roam mode
execute unless score global gameState matches 5 run return 0

#set actionbar times for free roam mode
scoreboard players set @s[scores={actionbarState=..5}] actionbarState2 3
scoreboard players set @s[scores={actionbarState=..5}] actionbarState 5