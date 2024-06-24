tag @s add forcespectate
tag @s remove playing
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1..3}] run gamemode spectator @s
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7..8}] run gamemode spectator @s
execute unless entity @e[tag=w,type=armor_stand,scores={gameState=0}] run team join spectator @s
execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

title @s subtitle [""]
title @s title [""]

execute if score @s points matches 1.. run scoreboard players operation @s dummyPoints = @s points
scoreboard players reset @s points
scoreboard players reset @s racePosDisplay
scoreboard players reset @s racePosDisplay2
scoreboard players reset @s KOs

scoreboard players set @s gAppleTime 0
scoreboard players set @s elytraTimer 0
scoreboard players set @s moveState 2
scoreboard players set @s storedHudNode -1
execute if score @s hudNode matches 1..32 run scoreboard players operation @s storedHudNode = @s hudNode
scoreboard players reset @s hudNode

tag @s remove afk

function sprint_racer_language:switch_to_spectator