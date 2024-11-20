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

tag @e[tag=w,type=armor_stand] remove settingTracks

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

function sprint_racer_language:_dlc_3/gameplay/grand_prix_bossbar
function sprint_racer_language:_dlc_3/gameplay/grand_prix_enabled

gamemode adventure @a

scoreboard players set @e[tag=w,type=armor_stand] gameState 11



kill @e[tag=lobbyprop]
kill @e[tag=roundDisplay,type=armor_stand]
kill @e[tag=cDisplay,type=armor_stand]
kill @e[tag=cDisplay2,type=armor_stand]
kill @e[tag=itemcontainer]

#summon some props
summon armor_stand 1595 68 440 {Tags:["lobbyprop","gp_round_show"],DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Invisible:1}
summon armor_stand 1585 72 426 {Tags:["lobbyprop","move_down_1"],DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",count:1}]}
summon armor_stand 1588 72 426 {Tags:["lobbyprop","move_down_1"],DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",count:1}]}
summon armor_stand 1591 72 426 {Tags:["lobbyprop","move_down_1"],DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",count:1}]}
execute if entity @e[limit=1,tag=39,type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1] positioned 1583 68 447 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",count:1}],CustomNameVisible:0,CustomName:'{"text":"CUSTOMLAPS","bold":true,"italic":false}'}
execute as @e[tag=move_down_1,limit=3,type=armor_stand] at @s run tp @s ~ ~-.4 ~
tag @e[tag=move_down_1,limit=3,type=armor_stand] remove move_down_1

function sprint_racer_language:_dlc_3/grand_prix/button_names

#update display
fill 1598 70 439 1598 73 441 orange_concrete
function sprint_racer:game_logic/11/update_display

summon armor_stand 1592 69 440 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["lobbyprop","gpTrackNo"]}
execute as @e[tag=trackStatus] at @s run tp @s ~ ~ ~.5