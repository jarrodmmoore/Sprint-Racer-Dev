scoreboard players reset @a[scores={pressJump=1}] pressJump

######
#MUSIC
function sprint_racer:music/global/stop_music
######

worldborder warning distance 0

function sprint_racer:mid_game_vote/disable

scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 0

tag @e[type=armor_stand,tag=chosenTrack] remove chosenTrack

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

#new in v1.6: all custom tracks should have an associated custom tagline
#so for any old worlds that got datapack-updated, generate that data right now
execute as @e[type=armor_stand,tag=customtrack] unless score @s customTagLine matches -2147483648..2147483647 run function sprint_racer:game_logic/10/assign_custom_tagline_storage

#kill lobby props
kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
execute as @e[tag=itemcontainer] at @s run function sprint_racer:items/container_delete

#clone sign data
function sprint_racer:game_logic/10/clone_sign_data

#set up the grid
execute positioned 1594 79 368 rotated 270 0 run function sprint_racer:game_logic/10/grid_display/_initialize {facing:4}
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/set_page_0
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display

#default display value
execute unless entity @e[tag=customrace] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 0
execute if entity @e[tag=customrace] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolMode 1

function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display