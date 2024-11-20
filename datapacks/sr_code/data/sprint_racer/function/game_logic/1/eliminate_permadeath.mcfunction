#this is run by the poor sap who got eliminated

#get eliminated tag
tag @s add eliminated
execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add eliminated
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add eliminated
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add eliminated
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add eliminated
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add eliminated
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add eliminated
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add eliminated
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add eliminated
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add eliminated

#automatically put ourselves in last (behind all living active players)
scoreboard players set #getFinalPlacement value 1
execute as @a[tag=playing,tag=!eliminated] run scoreboard players add #getFinalPlacement value 1
execute as @e[type=armor_stand,tag=AImaster,tag=!eliminated] run scoreboard players add #getFinalPlacement value 1

gamemode spectator @s[type=player]
#scoreboard players operation @s finishPos = @s racePosDisplay
scoreboard players operation @s racePosDisplay = #getFinalPlacement value
scoreboard players operation @s finishPos = #getFinalPlacement value

function sprint_racer_language:_dlc_1/gameplay/race_elimination/announce_elimination
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run team join playerFinished @s[type=player]

#get points
scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints += @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] addPoints2
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints2 1

#remember time of death
scoreboard players operation @s[type=player] storedTimeMin = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
scoreboard players operation @s[type=player] storedTimeSec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
scoreboard players operation @s[type=player] storedTimeMsec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec

#AI stuff
execute if entity @s[tag=ai1] run scoreboard objectives remove validAI1
execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add aiDisable
execute if entity @s[tag=ai1] run scoreboard players operation @e[tag=AImaster,scores={rNumber=1}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai1] run scoreboard players operation @e[tag=AImaster,scores={rNumber=1}] addPoints = @s addPoints

execute if entity @s[tag=ai2] run scoreboard objectives remove validAI2
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add aiDisable
execute if entity @s[tag=ai2] run scoreboard players operation @e[tag=AImaster,scores={rNumber=2}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai2] run scoreboard players operation @e[tag=AImaster,scores={rNumber=2}] addPoints = @s addPoints

execute if entity @s[tag=ai3] run scoreboard objectives remove validAI3
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add aiDisable
execute if entity @s[tag=ai3] run scoreboard players operation @e[tag=AImaster,scores={rNumber=3}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai3] run scoreboard players operation @e[tag=AImaster,scores={rNumber=3}] addPoints = @s addPoints

execute if entity @s[tag=ai4] run scoreboard objectives remove validAI4
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add aiDisable
execute if entity @s[tag=ai4] run scoreboard players operation @e[tag=AImaster,scores={rNumber=4}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai4] run scoreboard players operation @e[tag=AImaster,scores={rNumber=4}] addPoints = @s addPoints

execute if entity @s[tag=ai5] run scoreboard objectives remove validAI5
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add aiDisable
execute if entity @s[tag=ai5] run scoreboard players operation @e[tag=AImaster,scores={rNumber=5}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai5] run scoreboard players operation @e[tag=AImaster,scores={rNumber=5}] addPoints = @s addPoints

execute if entity @s[tag=ai6] run scoreboard objectives remove validAI6
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add aiDisable
execute if entity @s[tag=ai6] run scoreboard players operation @e[tag=AImaster,scores={rNumber=6}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai6] run scoreboard players operation @e[tag=AImaster,scores={rNumber=6}] addPoints = @s addPoints

execute if entity @s[tag=ai7] run scoreboard objectives remove validAI7
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add aiDisable
execute if entity @s[tag=ai7] run scoreboard players operation @e[tag=AImaster,scores={rNumber=7}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai7] run scoreboard players operation @e[tag=AImaster,scores={rNumber=7}] addPoints = @s addPoints

execute if entity @s[tag=ai8] run scoreboard objectives remove validAI8
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add aiDisable
execute if entity @s[tag=ai8] run scoreboard players operation @e[tag=AImaster,scores={rNumber=8}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai8] run scoreboard players operation @e[tag=AImaster,scores={rNumber=8}] addPoints = @s addPoints

execute if entity @s[tag=ai9] run scoreboard objectives remove validAI9
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add aiDisable
execute if entity @s[tag=ai9] run scoreboard players operation @e[tag=AImaster,scores={rNumber=9}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai9] run scoreboard players operation @e[tag=AImaster,scores={rNumber=9}] addPoints = @s addPoints

effect clear @s minecraft:glowing

tag @s add finished

#ai dies
execute if entity @s[tag=ai] run kill @s