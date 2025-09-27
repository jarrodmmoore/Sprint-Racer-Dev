scoreboard players reset @a[scores={pressJump=1}] pressJump

clear @a

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove halftick

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

function sprint_racer_language:_dlc_1/gameplay/track_pool_bossbar
function sprint_racer_language:_dlc_1/gameplay/track_pool_enabled

gamemode adventure @a

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 9


kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
execute as @e[tag=itemcontainer] at @s run function sprint_racer:items/container_delete

#no options signs in here, please
fill 1581 77 366 1581 78 375 air

#default display value
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolMode 1
#function sprint_racer:game_logic/9/update_display/_index
#fill 1595 79 369 1595 82 372 light_blue_concrete
execute positioned 1594 79 368 rotated 270 0 run function sprint_racer:game_logic/9/grid_display/_initialize {facing:4}
function sprint_racer:game_logic/9/grid_display/ungrouped_stock/set_page_0
function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_display


summon armor_stand 1593 79 370 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["lobbyprop","trackStatus"]}
execute as @e[tag=trackStatus] at @s run tp @s ~ ~ ~.5