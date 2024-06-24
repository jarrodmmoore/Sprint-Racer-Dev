scoreboard players reset @a[scores={pressJump=1}] pressJump

######
#MUSIC
function sprint_racer:music/global/stop_music
######

worldborder warning distance 0

function sprint_racer:mid_game_vote/disable

scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,type=armor_stand] specJoinTime 0

tag @e[type=armor_stand,tag=chosenTrack] remove chosenTrack

tag @e[tag=w,type=armor_stand] add wmCustomReload
clear @a

scoreboard objectives setdisplay sidebar

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[tag=w,tag=autotick] run tag @e[tag=w,type=armor_stand] remove halftick

tag @e[tag=w,type=armor_stand] remove findLocation
tag @e[tag=w,type=armor_stand] remove editingTrack

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1

tag @a[limit=1] add spdbump

tag @e[tag=aiMaster] remove AImaster

bossbar set minecraft:lap1 players
bossbar set minecraft:lap2 players
bossbar set minecraft:lap3 players
bossbar set minecraft:lap4 players
bossbar set minecraft:lap5 players
bossbar set minecraft:lap6 players
bossbar set minecraft:lap7 players
bossbar set minecraft:lap8 players
bossbar set minecraft:lap9 players
bossbar set minecraft:lap10 players
bossbar set timeremaining players
bossbar set gauntlettime players
bossbar set minecraft:control_daggerattack players
bossbar set minecraft:control_openwings players
bossbar set minecraft:control_holdtosprint players
bossbar set freeroam players
bossbar set menutimer players
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players

scoreboard players set @a invisibility 0
scoreboard players set @a resistTime 0
scoreboard players set @a invulTime 0

scoreboard players set @e[tag=w,type=armor_stand] itemBlockState 0

tag @e[tag=finished] remove finished
tag @e[tag=noInventory2] remove noInventory2

scoreboard objectives remove killedByPlayer
scoreboard objectives remove killPlayer
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player

time set 6000
gamerule doDaylightCycle false
weather clear
scoreboard players reset @e[tag=w,type=armor_stand] storm

function sprint_racer_language:_dlc_1/gameplay/custom_manage_bossbar
function sprint_racer_language:_dlc_1/gameplay/custom_manage_enabled

gamemode adventure @a

scoreboard players set @e[tag=w,type=armor_stand] gameState 10



kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[tag=itemcontainer]

#summon display frames
summon minecraft:item_frame 1594 80 370 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
summon minecraft:item_frame 1594 80 371 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
summon minecraft:item_frame 1594 81 370 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}
summon minecraft:item_frame 1594 81 371 {Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop"]}


#default display value
execute unless entity @e[tag=customrace] run scoreboard players set @e[tag=w,type=armor_stand] tvPoolNum 0
execute if entity @e[tag=customrace] run scoreboard players set @e[tag=w,type=armor_stand] tvPoolNum 1
scoreboard players set @e[tag=w,type=armor_stand] tvPoolMode 1
function sprint_racer:game_logic/10/update_display/_index
fill 1595 79 369 1595 82 372 light_blue_concrete


summon armor_stand 1593 79 370 {Invisible:1,NoGravity:1,Invulnerable:1,Marker:1b,Tags:["lobbyprop","trackStatus"]}
execute as @e[tag=trackStatus] at @s run tp @s ~ ~ ~.5