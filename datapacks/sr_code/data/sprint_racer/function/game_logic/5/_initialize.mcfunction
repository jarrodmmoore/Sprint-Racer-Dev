function sprint_racer:give_ids

######
#MUSIC
function sprint_racer:music/global/stop_music
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3..14}] add musicViable
function sprint_racer:music/global/pick_track
######

tag @a remove fr_nightvision
effect clear @a
function sprint_racer:ai/general/ai_stop_all
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[type=ender_pearl]

#halftick mode in realms when we have 6 or more players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick,scores={playerCount=6..}] add halftick

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm
weather clear

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy
scoreboard players set @a itemBlockState 0

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 5
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 0

team modify player seeFriendlyInvisibles false
team modify player color green

scoreboard players set @a actionbarState 1
scoreboard players set @a actionbarState2 0
scoreboard players set @a lap 1
scoreboard players set @a check 0
scoreboard players set @a lapAnimation 0
scoreboard players set @a subtitleDelay 0
scoreboard players set @a itemCooldown 0
scoreboard players set @a itemBlockState 0
scoreboard players reset @a death
scoreboard players set @a scriptMove 0
scoreboard players set @a lastTeleport 0
scoreboard players set @a navDirection 0
scoreboard players set @a navDirection2 0
scoreboard players set @a inputCooldown 0
scoreboard players set @a offCourseBuffer 0
scoreboard players set @a wrongWayBuffer 0

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1

scoreboard players reset @a enderman
scoreboard players reset @a anvil
scoreboard players reset @a burn
scoreboard players reset @a blindtime

#clear chosen track
tag @e[tag=chosenTrack] remove chosenTrack

#clear bossbars!
function sprint_racer:clear_bossbars

title @a times 0 45 5
title @a subtitle [""]
title @a title [""]
title @a actionbar [""]
clear @a
function sprint_racer:reset_speeds
scoreboard objectives setdisplay sidebar

function sprint_racer:items/item_presets/free_roam

function sprint_racer_language:_dlc_1/gameplay/free_roam_bossbar

time set 6000

#boardwalk so players don't fall down and die right away
clone 1567 69 429 1572 72 433 1500 126 407
fill 1505 131 405 1505 136 413 air

tp @a 1507 128 409 90 25
spawnpoint @a 1195 62 406
execute as @a run function sprint_racer_language:gameplay/give_item/elite12

execute as @a run function sprint_racer:save_coordinates

function sprint_racer_language:_dlc_1/gameplay/free_roam_enabled

worldborder set 20000000 0