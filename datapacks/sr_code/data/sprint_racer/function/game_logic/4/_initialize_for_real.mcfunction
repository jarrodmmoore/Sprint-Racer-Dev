#make sure there's at least 1 player that has points. if none, skip sequence
execute store result score #success value run execute if entity @a[scores={dummyPoints=1..}]
execute if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..,aiPoints=1..}] run scoreboard players add #success value 1
execute if score Orange teamPointsShow matches 1.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run scoreboard players add #success value 1
execute if score Cyan teamPointsShow matches 1.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run scoreboard players add #success value 1
execute if score #success value matches 0 run return run function sprint_racer:game_logic/4/end
#=====

#this teleport will get overridden, but we need it here anyway because relative TPs don't cancel player velocity
tp @a 1636 88 406 facing 1653 92 406

#send players to lobby area for ceremony
scoreboard players set #varyTeleport value 0
execute as @a positioned 1636 88 406 facing 1653 92 406 run function sprint_racer:varied_teleport
spawnpoint @a 1636 88 406

######
#MUSIC
tag @e[type=armor_stand,tag=setBGM] remove setBGM
function sprint_racer:music/global/stop_music
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=16}] add setBGM
function sprint_racer:music/global/pick_track
######

#recall saved points
function sprint_racer:load_saved_points

kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove clearImpulse
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove allowPVP
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove raining

#change the lobby for the sequence
clone 1644 73 392 1661 81 420 1644 87 392
fill 1660 100 392 1665 126 423 air
fill 1662 99 393 1665 99 419 air
fill 1626 88 395 1643 89 395 barrier replace air
fill 1625 88 395 1625 89 417 barrier replace air
fill 1626 88 417 1643 89 417 barrier replace air

#make sure displays are refreshed
team empty player
team empty spectator
team empty playerFinished
execute as @a[scores={points=..999}] run scoreboard players operation @s dummyPoints = @s points
scoreboard players set @a finishPos 0
scoreboard players add @a dummyPoints 0
scoreboard players reset * points
scoreboard players reset * KOs
execute as @a[scores={dummyPoints=1..}] run scoreboard players operation @s points = @s dummyPoints
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,aiPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/display
scoreboard objectives setdisplay sidebar points
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run scoreboard objectives setdisplay sidebar teamPointsShow
scoreboard objectives setdisplay list

#update entity types for AI, in case we want to spawn them
function sprint_racer:ai/general/set_entity_type
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer:ai/general/update_bot_name
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors


team modify playerCyan color dark_aqua
team modify playerOrange color gold

time set 6000
gamerule doDaylightCycle false
weather clear
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] scriptMove 1

tag @a add noInventory
clear @a
gamemode adventure @a
function sprint_racer:reset_speeds
effect clear @a
effect give @a minecraft:blindness 2 100 true
effect give @a minecraft:resistance 10 255 true
effect give @a minecraft:instant_health 1 50 true
title @a actionbar [""]

tag @a[limit=1] add spdbump

#clear bossbars!
function sprint_racer:clear_bossbars

scoreboard players set @a invisibility 0
scoreboard players set @a resistTime 0
scoreboard players set @a invulTime 0

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 0

bossbar set minecraft:speedo players

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 4