function sprint_racer:give_ids
scoreboard objectives setdisplay sidebar

######
#MUSIC
tag @e[type=armor_stand,tag=setBGM] remove setBGM
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] remove musicViable
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add musicViable
scoreboard players operation @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..2}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={math=1}] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add musicViable
function sprint_racer:music/global/pick_track
######


#######################
#DETERMINE IF PLAYERS ARE READY OR NOT
#number of ready players required to start is the total divided by 2
#calculate required players
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerCountA
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 2
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy /= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyRequired = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] readyDummy
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyRequired 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={readyRequired=..0}] readyRequired 1

#calculate ready players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy 0
execute as @a[tag=playing,tag=readyup] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy 1
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyCount = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] readyRequired
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={readyDummy=0..,readyState=..0}] run function sprint_racer:game_logic/0/set_mode_ready
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={readyDummy=..-1,readyState=1..}] run function sprint_racer:game_logic/0/set_mode_not_ready
#######################

scoreboard players set @a subtitleDelay 20

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove needAnnounce
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=remind2vote] remove remind2vote

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] remove banChest

setblock 1507 116 417 light_blue_stained_glass
setblock 1507 116 403 red_stained_glass

#make sure displays are refreshed
team empty player
team empty spectator
team empty playerFinished
execute as @a[scores={points=..999}] run scoreboard players operation @s dummyPoints = @s points
scoreboard players reset * points
scoreboard players reset * KOs

#default team colors, may or may not be overwritten later
team modify player color aqua
team modify playerCyan color aqua
team modify playerOrange color aqua

time set 6000
gamerule doDaylightCycle false
weather clear

effect clear @a night_vision

#time in lobby for track 2
execute if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=currentBGM,scores={rNumber=2}] run time set 12400

#removing "nodeState" so ALL activated nodes are forgotten between games, even ones in unloaded chunks
scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

#removing "validEntity" so invalid entities lingering in the world will lost their score and get killed when their chunks are reloaded
scoreboard objectives remove validEntity
scoreboard objectives add validEntity dummy

#prevent invalid roundNumber stuff
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optBattle,scores={roundNumber=6..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optBattle,tag=optChoose,scores={roundNumber=6..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optBattle,tag=!optChoose] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optRace,scores={roundNumber=5..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optRace,scores={roundNumber2=4..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1

#sidebar display for next round
function sprint_racer:game_logic/0/sidebar/__index_main

clear @a
gamemode adventure @a
function sprint_racer:reset_speeds
title @a actionbar [""]

#skip to track select area?
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove choosingTrack
execute if entity @a[tag=playing] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optChoose,tag=skiptochoose,scores={readyState=1..}] add choosingTrack
execute if entity @a[tag=playing] if score #gpTrackSelect value matches 5 run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix,tag=skiptochoose,scores={readyState=1..}] add choosingTrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=skiptochoose] remove skiptochoose

#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack,tag=!optChoose] run function sprint_racer_language:lobby/options/defaults
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove clearImpulse
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove allowPVP
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove raining
tag @a remove playerVote1
tag @a remove playerVote2
tag @a remove playerVote3
tag @a remove noInventory
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] scriptMove 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dropBarrier 1

#optVote
#optChoose
#optRandom

scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 800
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 600
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameTime = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] defLobbyTime
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] voteTime = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] defVoteTime
#go right to track selection if w has "choosingTrack" tag (cuts out extra wait time)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack] gameTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack] voteTime 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack] run scoreboard players set @a inputCooldown 120

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=15..19}] voteTime 10
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=20..24}] voteTime 15
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=25..29}] voteTime 20
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=30..39}] voteTime 25
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=40..44}] voteTime 30
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=45..49}] voteTime 35
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=50..59}] voteTime 40
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=60..79}] voteTime 50
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=80..99}] voteTime 60
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=100..119}] voteTime 80
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=120..}] voteTime 100

bossbar set minecraft:menutimer style notched_10
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote] store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] voteTime
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={roundNumber=..4}] run function sprint_racer_language:lobby/bossbar_voting_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={roundNumber=..4}] run function sprint_racer:random/vote_options_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={roundNumber=5}] run function sprint_racer_language:lobby/bossbar_voting_battle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={roundNumber=5}] run function sprint_racer:random/vote_options_battle

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=..4}] run team modify playerCyan color aqua
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=..4}] run team modify playerOrange color aqua
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=..4}] run team modify player color aqua
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=5}] run team modify playerCyan color red
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=5}] run team modify playerOrange color red
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optChoose,scores={roundNumber=5}] run team modify player color red

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!optVote] store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] defLobbyTime

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] defLobbyTime

#peek at the next grand prix round if needed
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] run function sprint_racer:game_logic/0/grand_prix_peek

bossbar set minecraft:speedo players

#summon entities and important stuff found in the hub
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=summonProps] run function sprint_racer:game_logic/0/props/summon_props
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=summonProps] remove summonProps
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/props/summon_props

#close coffee shop door in grand prix mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix] run clone 1576 80 425 1580 84 433 1576 88 425
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!grandprix] run fill 1576 91 456 1579 91 456 water replace iron_bars
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run clone 1576 68 425 1580 72 433 1576 88 425
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run fill 1576 91 456 1579 91 456 iron_bars[waterlogged=true] replace water

#round number display
function sprint_racer:game_logic/0/update_round_display

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 0