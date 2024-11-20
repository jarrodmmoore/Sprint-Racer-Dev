#this is run by the poor sap who got eliminated

function sprint_racer_language:_dlc_1/gameplay/race_elimination/announce_elimination

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run team join playerFinished @s[type=player]
gamemode spectator @s[type=player]
tag @s add eliminated
scoreboard players operation @s finishPos = @s racePosDisplay

scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints += @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] addPoints2
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints2 1

#AI stuff
execute if entity @s[tag=ai1] run scoreboard objectives remove validAI1
execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add aiDisable
execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add eliminated
execute if entity @s[tag=ai1] run scoreboard players operation @e[tag=AImaster,scores={rNumber=1}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai1] run scoreboard players operation @e[tag=AImaster,scores={rNumber=1}] addPoints = @s addPoints

execute if entity @s[tag=ai2] run scoreboard objectives remove validAI2
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add aiDisable
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add eliminated
execute if entity @s[tag=ai2] run scoreboard players operation @e[tag=AImaster,scores={rNumber=2}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai2] run scoreboard players operation @e[tag=AImaster,scores={rNumber=2}] addPoints = @s addPoints

execute if entity @s[tag=ai3] run scoreboard objectives remove validAI3
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add aiDisable
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add eliminated
execute if entity @s[tag=ai3] run scoreboard players operation @e[tag=AImaster,scores={rNumber=3}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai3] run scoreboard players operation @e[tag=AImaster,scores={rNumber=3}] addPoints = @s addPoints

execute if entity @s[tag=ai4] run scoreboard objectives remove validAI4
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add aiDisable
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add eliminated
execute if entity @s[tag=ai4] run scoreboard players operation @e[tag=AImaster,scores={rNumber=4}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai4] run scoreboard players operation @e[tag=AImaster,scores={rNumber=4}] addPoints = @s addPoints

execute if entity @s[tag=ai5] run scoreboard objectives remove validAI5
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add aiDisable
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add eliminated
execute if entity @s[tag=ai5] run scoreboard players operation @e[tag=AImaster,scores={rNumber=5}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai5] run scoreboard players operation @e[tag=AImaster,scores={rNumber=5}] addPoints = @s addPoints

execute if entity @s[tag=ai6] run scoreboard objectives remove validAI6
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add aiDisable
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add eliminated
execute if entity @s[tag=ai6] run scoreboard players operation @e[tag=AImaster,scores={rNumber=6}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai6] run scoreboard players operation @e[tag=AImaster,scores={rNumber=6}] addPoints = @s addPoints

execute if entity @s[tag=ai7] run scoreboard objectives remove validAI7
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add aiDisable
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add eliminated
execute if entity @s[tag=ai7] run scoreboard players operation @e[tag=AImaster,scores={rNumber=7}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai7] run scoreboard players operation @e[tag=AImaster,scores={rNumber=7}] addPoints = @s addPoints

execute if entity @s[tag=ai8] run scoreboard objectives remove validAI8
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add aiDisable
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add eliminated
execute if entity @s[tag=ai8] run scoreboard players operation @e[tag=AImaster,scores={rNumber=8}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai8] run scoreboard players operation @e[tag=AImaster,scores={rNumber=8}] addPoints = @s addPoints

execute if entity @s[tag=ai9] run scoreboard objectives remove validAI9
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add aiDisable
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add eliminated
execute if entity @s[tag=ai9] run scoreboard players operation @e[tag=AImaster,scores={rNumber=9}] finishPos = @s racePosDisplay
execute if entity @s[tag=ai9] run scoreboard players operation @e[tag=AImaster,scores={rNumber=9}] addPoints = @s addPoints

#go boom
summon tnt ~.5 ~.5 ~.5 {fuse:10000,Tags:["giveID"]}
summon tnt ~-.5 ~.5 ~.5 {fuse:10000,Tags:["giveID"]}
summon tnt ~.5 ~.5 ~-.5 {fuse:10000,Tags:["giveID"]}
summon tnt ~-.5 ~.5 ~-.5 {fuse:10000,Tags:["giveID"]}
scoreboard players operation @e[tag=giveID] playerID = @s playerID
scoreboard players set @e[tag=giveID] age 70
tag @e[tag=giveID] remove giveID
playsound minecraft:entity.tnt.primed master @a
function sprint_racer:explode

effect clear @s minecraft:glowing
clear @s

#make w do some logic
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run function sprint_racer:game_logic/1/elimination/after_elimination

#ai dies
execute if entity @s[tag=ai] run kill @s