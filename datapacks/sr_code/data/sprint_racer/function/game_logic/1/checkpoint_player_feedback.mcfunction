execute if entity @s[tag=skip_available,scores={nCheck=2}] if entity @e[type=armor_stand,tag=50a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:cheats/skip_checkpoint

execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeMin = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeSec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
execute if entity @s[tag=checkIncrement] run scoreboard players operation @s storedTimeMsec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec
#execute if entity @s[tag=checkIncrement,tag=checkSound] run scoreboard players set @s[scores={elytraTimer=..0,actionbarState=..2}] actionbarState 2
#execute if entity @s[tag=checkIncrement,tag=checkText] run scoreboard players set @s[scores={elytraTimer=..0,actionbarState=..2}] actionbarState 2
#execute if entity @s[tag=checkIncrement] run scoreboard players set @s[scores={elytraTimer=..0}] actionbarState2 20

execute if entity @s[tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..8}] actionbarState 8
execute if entity @s[tag=checkWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..8}] actionbarState2 40

execute if entity @s[tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute if entity @s[tag=checkWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40
