scoreboard players reset @a[scores={pressJump=1}] pressJump

execute unless entity @a[tag=musicDef,scores={BGMtrack=1..2}] run function sprint_racer:game_logic/6/start_music

worldborder warning distance 0
gamerule fallDamage true

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove customTesting

scoreboard objectives remove specJoin
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] specJoinTime 0

tag @e[tag=chosenTrack] remove chosenTrack
schedule function sprint_racer:game_logic/6/clear_inv 1t

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add timeattack

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove halftick

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

team modify player color yellow

scoreboard objectives remove killedByPlayer
scoreboard objectives remove killPlayer
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player

time set 6000
gamerule doDaylightCycle false
weather clear
scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm

#time in lobby for track 2
execute if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=currentBGM,scores={rNumber=2}] run time set 12400

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy
scoreboard players set @a itemBlockState 0

function sprint_racer_language:_dlc_1/gameplay/time_attack_bossbar
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noTAmessage] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optNoItems] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add taNoItems
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noTAmessage] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optNoItems] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove taNoItems
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noTAmessage] run function sprint_racer_language:_dlc_1/gameplay/time_attack_enabled
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noTAmessage] run scoreboard objectives remove taLastChosen
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noTAmessage] run scoreboard objectives add taLastChosen dummy
function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar
tag @e[tag=noTAmessage] remove noTAmessage

gamemode adventure @a

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 6
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 0
