scoreboard players reset @a[scores={pressJump=1}] pressJump

######
#MUSIC
function sprint_racer:music/global/stop_music
######

scoreboard players set global loadAttempts 0
worldborder warning distance 0

function sprint_racer:mid_game_vote/disable

scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 0

tag @e[type=armor_stand,tag=chosenTrack] remove chosenTrack

#need to reload custom tracks at earliest convenience
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add wmCustomReload
clear @a

scoreboard objectives setdisplay sidebar

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove halftick

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove findLocation
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove editingTrack

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1

tag @a[limit=1] add spdbump

tag @e[tag=aiMaster] remove AImaster

#clear bossbars!
function sprint_racer:clear_bossbars

scoreboard players set @a invisibility 0
scoreboard players set @a resistTime 0
scoreboard players set @a invulTime 0

#don't let players die from previous fall!
effect give @a resistance 5 200 true

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemBlockState 0

tag @e[tag=finished] remove finished
tag @e[tag=noInventory2] remove noInventory2

scoreboard objectives remove killedByPlayer
scoreboard objectives remove killPlayer
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player

time set 6000
gamerule doDaylightCycle false
weather clear
scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm

function sprint_racer_language:_dlc_1/gameplay/custom_manage_bossbar
function sprint_racer_language:_dlc_1/gameplay/custom_manage_enabled

gamemode adventure @a

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 10

#custom tracks from old versions need to be kept up to date with some stuff
execute as @e[type=armor_stand,tag=customtrack] run function sprint_racer:game_logic/10/track_version_upkeep/_check

#kill lobby props
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[tag=itemcontainer]

#summon display frames
#summon minecraft:item_frame 1594 80 370 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
#summon minecraft:item_frame 1594 80 371 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
#summon minecraft:item_frame 1594 81 370 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
#summon minecraft:item_frame 1594 81 371 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
execute positioned 1594 79 368 rotated 270 0 run function sprint_racer:game_logic/10/grid_display/_initialize {facing:4}

#update display

function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display

#summon armor_stand 1593 78.35 370 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["lobbyprop","trackStatus"]}
#execute as @e[tag=trackStatus] at @s run tp @s ~ ~ ~.5