#clear temporary save state if one was active
execute if score #temporarySave value matches 1.. run function sprint_racer:game_logic/0/save_state/remove_temporary_state
#similar thing for custom tracks
execute if score #settingsWereOverridden value matches 1.. run function sprint_racer:game_logic/0/save_state/remove_temporary_state_custom


scoreboard players reset @a[scores={pressJump=1}] pressJump

#stop ambient noise
stopsound @a ambient

######
#MUSIC
function sprint_racer:music/global/stop_music
######

#force everyone into adventure mode right here to prevent a spectator exploit
gamemode adventure @a
execute as @a[scores={kart_model=101..108}] run function sprint_racer:game_logic/0/clear_old_head_model

#clear night vision so it doesn't get carried between tracks by mistake
effect clear @a night_vision

#decide if we should skip lobby or not in gp mode
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,limit=1] run function sprint_racer:game_logic/0/grand_prix_decide_if_skip

#reset speeds
function sprint_racer:speed_attribute
execute as @a[scores={kart_model=10..}] run function sprint_racer:cheats/remove_car_model

#misc clean up
worldborder warning distance 0
scoreboard players set #varyTeleport value 0
scoreboard players set #nextItemIsAnvil value 0

#clear scoreboard cache next time we load a track
scoreboard players set #clearCacheProgress value 0

#no longer testing a custom track
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove customTesting

scoreboard objectives remove specJoin
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] specJoinTime 0

scoreboard players enable @a useCustomSoundtrack

#this is for race mode...
execute if score #clearCacheAllowed value matches 1 run scoreboard players reset * playerRequire
scoreboard players set global playerRequire 0

function sprint_racer:mid_game_vote/disable

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove timeattack
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove return2lobby
scoreboard players reset @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] capsuleState

function sprint_racer:ai/general/ai_stop_all
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=autotick] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add halftick

#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=realms,tag=optVote] defLobbyTime 30
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=realms,tag=optRandom] defLobbyTime 25
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=realms,tag=optChoose] defLobbyTime 20

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] gamemodePresetA = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gamePresetA_save
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] gamemodePresetB = @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gamePresetB_save

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetA] gamemodePresetA 2
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetB] gamemodePresetB 2

scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1
function sprint_racer:items/reset_global_cooldowns

#update gamerules
gamerule fall_damage true
function sprint_racer:speedometer/enable_xp_bar

#speedometer shouldn't be on top bossbar
tag @a[limit=1] add spdbump

tag @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] remove AImaster

#reset title times again just in case somebody's client is on mushrooms
title @a times 0 45 5

#clear bossbars!
function sprint_racer:clear_bossbars

scoreboard players reset @a bbLapDisplay
scoreboard players set @a lap -999
scoreboard players set @a invisibility 0
scoreboard players set @a resistTime 0
scoreboard players set @a invulTime 0
scoreboard players reset @a villagerTalk
scoreboard players set @a[scores={heal_aware=1..}] heal_aware 1
tag @a[tag=assassin] remove assassin
tag @a[tag=enchanted_something_custom] remove enchanted_something_custom

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] itemBlockState 0

tag @e[tag=finished] remove finished
tag @e[tag=noInventory2] remove noInventory2

team modify player color aqua
team modify playerCyan color aqua
team modify playerOrange color aqua

scoreboard objectives remove killedByPlayer
scoreboard objectives remove killPlayer
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player

#in grand prix mode we don't use roundNumber, so just force it to be 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] roundNumber 1

#get data on current round and round number
scoreboard players set #round_number value 1
scoreboard players set #round_game_type value 1
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!grandprix] run function sprint_racer:game_logic/0/round_sequence/get_current_round_data

#determine whether or not we gonna run the award ceremony
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!grandprix] if score @s roundNumber > #round_max_number value run tag @s add ceremony
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,limit=1] if score @s gpRound > @s gpNumber run tag @s add ceremony

#random track mode will skip the lobby unless everyone went spectator for some reason
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={readyState=1..}] unless entity @a[tag=playing] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] readyState 0

#execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] run function sprint_racer:game_logic/4/_initialize
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=optRandom,tag=!noskip2next,scores={readyState=1..}] run function sprint_racer:game_logic/0/_initialize_for_real
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=optRandom,tag=!noskip2next,scores={readyState=1..}] run function sprint_racer:game_logic/0/_initialize_skip_to_next
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] run function sprint_racer:game_logic/4/_initialize

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,tag=gp_skip2next,tag=!noskip2next] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] run function sprint_racer:game_logic/0/_initialize_skip_to_next
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] unless entity @a[limit=1,tag=gp_no_lobby_return] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,tag=gp_skip2next,tag=!noskip2next] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=ceremony] run function sprint_racer:game_logic/0/_initialize_for_real

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove gp_no_lobby_return
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove noskip2next
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove gp_skip2next

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove ceremony