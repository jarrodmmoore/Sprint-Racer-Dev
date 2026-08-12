#skip menu and go straight to credits movie if we just got our 74th gold medal
execute if score #specialCredits value matches 1 unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run return run function sprint_racer:game_logic/12/_initialize
#=====


scoreboard players reset @a[scores={pressJump=1}] pressJump

execute unless entity @a[tag=musicDef,scores={BGMtrack=1..2}] run function sprint_racer:game_logic/6/start_music

worldborder warning distance 0
gamerule fall_damage true
function sprint_racer:speedometer/enable_xp_bar

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove customTesting

scoreboard objectives remove specJoin
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] specJoinTime 0

tag @e[tag=chosenTrack] remove chosenTrack
schedule function sprint_racer:game_logic/6/clear_inv 1t

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add timeattack

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove halftick

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

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] itemBlockState 0

tag @e[tag=finished] remove finished
tag @e[tag=noInventory2] remove noInventory2

team modify player color yellow

scoreboard objectives remove killedByPlayer
scoreboard objectives remove killPlayer
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player

time set 6000
gamerule advance_time false
weather clear
scoreboard players reset @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] storm

#time in lobby for track 2
execute if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=currentBGM,scores={rNumber=2}] run time set 12400

scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

scoreboard objectives remove itemBlockState
scoreboard objectives add itemBlockState dummy
scoreboard players set @a itemBlockState 0

function sprint_racer_language:_dlc_1/gameplay/time_attack_bossbar
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noTAmessage] if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=optNoItems] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add taNoItems
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noTAmessage] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=optNoItems] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove taNoItems
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noTAmessage] run function sprint_racer_language:_dlc_1/gameplay/time_attack_enabled
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noTAmessage] run scoreboard objectives remove taLastChosen
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=noTAmessage] run scoreboard objectives add taLastChosen dummy
function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar
tag @e[tag=noTAmessage] remove noTAmessage

gamemode adventure @a
execute as @a[scores={kart_model=101..108}] run function sprint_racer:game_logic/0/clear_old_head_model

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameState 6
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameTime 0
