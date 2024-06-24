execute if entity @s[tag=skip_available,scores={nCheck=1}] if entity @e[type=armor_stand,tag=50a,tag=cheats] run function sprint_racer:cheats/skip_checkpoint_on_finishline

execute if entity @s[tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 8
execute if entity @s[tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState2 40

execute if entity @s[tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute if entity @s[tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40