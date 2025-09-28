#boy i sure hope that this code doesn't get run before entities are loaded at worldspawn
#but that would never happen... right?


#SPAWN IS AT 1550 88 406

tp @s 1556 88.5 406 90 0

#get the admin tag if the sprint racer config files told us we are admin
tag @s[scores={adminMode=1..}] add admin
tag @s remove dev

#grand prix points are saved, even on re-join
scoreboard players add @s gpPoints 0
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpPoints = @s gpPoints

#I need to catch any players with the admin tag who might've been on my dev server
#so first time joins will get their admin tag removed no matter what
execute unless score @s hitsound matches -999.. run tag @s[tag=admin] remove admin

#remember hitsound
scoreboard players set #hitsound value -1000
execute if score @s hitsound matches -999.. run scoreboard players operation #hitsound value = @s hitsound

#remember aiLevel
scoreboard players set #aiLevel value -1000
execute if score @s aiLevel matches 0.. run scoreboard players operation #aiLevel value = @s aiLevel

#swim fast always
attribute @s minecraft:water_movement_efficiency base set 1

#waypoint transmit range
attribute @s minecraft:waypoint_transmit_range base reset
waypoint modify @s style set minecraft:battle_player

#make sure no AIs have the same name as us
function sprint_racer:ai/general/check_player_usernames
#RESET ALL SCORES
scoreboard players reset @s

scoreboard players set @s playerID 0
scoreboard players set @s attackerID 0
scoreboard players set @s attackTime 0

xp set @s 0 levels
xp set @s 0 points

#set stats to default
function sprint_racer:cheats/shoes/0

team join spectator @s
clear @s

execute if entity @s[tag=!initialized] run tag @s add timer
execute if entity @s[tag=!initialized] run tag @s remove navigator
execute if entity @s[tag=!initialized] run tag @s remove miniHUD
execute if entity @s[tag=!initialized] run tag @s remove minChat
execute if entity @s[tag=!initialized] run tag @s remove noTutorial
execute if entity @s[tag=!initialized] run function sprint_racer_language:default_speedometer_units

tag @s add initialized
tag @s remove playing
tag @s remove requestCyan
tag @s remove requestOrange
scoreboard players set @s previousTeam 0
tag @s remove playing
tag @s remove forcespectate
tag @s remove afk
tag @s remove lobby
tag @s remove finished
tag @s remove playerVote1
tag @s remove playerVote2
tag @s remove playerVote3
tag @s remove noInventory
tag @s remove noInventory2
tag @s remove darkHUD
tag @s remove eliminated
tag @s add 1_lap_only
tag @s remove kart_model
tag @s remove kart_model_1
tag @s remove kart_model_2
tag @s remove kart_model_3
tag @s remove kart_model_4
tag @s remove kart_model_5
tag @s remove invis_cram
tag @s remove fr_nightvision
scoreboard players set @s heal_aware 1
scoreboard players set @s inputCooldown 0
scoreboard players set @s playerState 0
scoreboard players set @s actionbarState 1
scoreboard players set @s actionbarState2 0
scoreboard players set @s startCountdown 0
gamemode adventure @s
title @s times 0 45 5
scoreboard players set @s currentTime 0
scoreboard players set @s currentTimeMin 0
scoreboard players set @s currentTimeSec 0
scoreboard players set @s currentTimeMsec 0

scoreboard players set @s speedBoost 0
scoreboard players set @s speedBState 0
scoreboard players set @s dSpeedBState 0
scoreboard players set @s moveSpeed 0
scoreboard players set @s rateAccel 0
scoreboard players set @s rateDecel 0
scoreboard players set @s timeWalked 0

scoreboard players reset @s racePosCalc
scoreboard players reset @s racePosDisplay2

scoreboard players set @s tacticsStep 1

scoreboard players set @s maturity 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={difficultyRamp=..0}] run scoreboard players set @s maturity 100

#item luck stat
scoreboard players set @s itemLuck 3
scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @s[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @s[scores={itemLuck=..0}] itemLuck 1

scoreboard players set @s itemCooldown 0
scoreboard players set @s projectileSafe 0
scoreboard players set @s nResist 0
scoreboard players set @s resistTime 0
scoreboard players set @s resTimer 0
scoreboard players set @s invulTime 0
scoreboard players set @s invulTimer 0
scoreboard players set @s invisibility 0
scoreboard players set @s invisTimer 0
scoreboard players set @s elytraState 0
scoreboard players set @s elytraTimer 0
scoreboard players set @s showCheckNav 0
scoreboard players set @s lightningSafe 0
scoreboard players set @s resetCooldown 0
scoreboard players set @s inputCooldown 0
scoreboard players set @s KOs 0
scoreboard players set @s subtitleDelay 0
scoreboard players set @s mapZone 0
scoreboard players set @s scriptMove 0
scoreboard players set @s lastTeleport 0
scoreboard players set @s hitstun 0
scoreboard players set @s crowdCooldown 0

scoreboard players enable @s useCustomSoundtrack

#music stuff
execute unless score @s soundtrack matches 1.. run scoreboard players set @s soundtrack 1
stopsound @s record
tag @s remove musicSel
tag @s[tag=!musicOff] add musicDef
scoreboard players set @s musicTime 100
scoreboard players operation @s[tag=musicDef] BGMtrack = @e[limit=1,type=armor_stand,tag=currentBGM] rNumber
execute unless entity @e[limit=1,type=armor_stand,tag=currentBGM] run scoreboard players set @s[tag=musicDef] BGMtrack 0

#hitsound
execute unless score #hitsound value matches -1000 run scoreboard players operation @s hitsound = #hitsound value
execute unless entity @s[scores={hitsound=0..}] run scoreboard players set @s hitsound 1

#aiLevel
execute if score #aiLevel value matches 0.. run scoreboard players operation @s aiLevel = #aiLevel value

#sync up with global join value
scoreboard players operation @s join = #join_tick value

#hello, i'm from the future
#and
#i just wanna say that this code is HIDEOUS
tag @s add self
execute unless entity @a[tag=!self] run function sprint_racer:join_solo
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=..999}] run function sprint_racer:join_logic/error
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=0,readyState=1..}] run function sprint_racer:join_logic/in_lobby
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=0,readyState=..0}] run function sprint_racer:join_logic/in_lobby_not_started
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..3}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_game_players
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..3}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_game_no_players
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=4}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_lobby_podium
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=4}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_lobby_not_started
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=5}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/free_roam
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=5}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_lobby_not_started
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=6}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/time_attack_menu
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=6}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_lobby_not_started
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7..8}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_game_players
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7..8}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_game_no_players
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=9}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_lobby_track_pool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=10}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_track_editor
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=11}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_grand_prix_setup
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=12}] if entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_credits
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=9..12}] unless entity @a[tag=playing,tag=!self] run function sprint_racer:join_logic/in_game_no_players
scoreboard players enable @s viewCheats
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=cheatdetected] run function sprint_racer_language:_dlc_2/cheats_found
tag @s remove self

#need id? get one
execute unless score @s playerID matches 2.. run function sprint_racer:give_ids2

#restore our saved gpPoints score
scoreboard players operation @s gpPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpPoints
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,tag=grandprix] run scoreboard players operation @s dummyPoints = @s gpPoints
scoreboard players add @s dummyPoints 0

tag @s remove readyup
#if the lobby is already in "ready" mode, newly joined players are declared ready by default
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={readyState=1..}] run tag @s add readyup