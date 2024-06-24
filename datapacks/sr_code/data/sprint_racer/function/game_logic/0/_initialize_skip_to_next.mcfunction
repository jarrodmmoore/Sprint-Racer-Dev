function sprint_racer:give_ids
scoreboard objectives setdisplay sidebar

scoreboard players set @a subtitleDelay 20

#give proper tags to players and spectators
#also give idlers another chance to play
scoreboard players set @a afkTime 0
tag @a[tag=afk] remove afk
tag @a[tag=!forcespectate] add playing
team join player @a[team=!player,tag=!forcespectate]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]

tag @e[tag=w,type=armor_stand] remove needAnnounce

tag @e[tag=random,scores={rNumber=1..50}] remove banChest

setblock 1507 116 417 light_blue_stained_glass
setblock 1507 116 403 red_stained_glass

#make sure displays are refreshed
team empty player
team empty spectator
team empty playerFinished
execute as @a[scores={points=..999}] run scoreboard players operation @s dummyPoints = @s points
scoreboard players reset * points
scoreboard players reset * KOs

time set 6000
gamerule doDaylightCycle false
weather clear

#removing "nodeState" so ALL activated nodes are forgotten between games, even ones in unloaded chunks
scoreboard objectives remove nodeState
scoreboard objectives add nodeState dummy

#removing "validEntity" so invalid entities lingering in the world will lost their score and get killed when their chunks are reloaded
scoreboard objectives remove validEntity
scoreboard objectives add validEntity dummy

#prevent invalid roundNumber stuff
execute if entity @e[tag=w,type=armor_stand,tag=!optBattle,scores={roundNumber=6..}] run scoreboard players set @e[tag=w,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,type=armor_stand,tag=optBattle] run scoreboard players set @e[tag=w,type=armor_stand] roundNumber 5
execute if entity @e[tag=w,type=armor_stand,tag=optRace,scores={roundNumber=5..}] run scoreboard players set @e[tag=w,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,type=armor_stand,tag=optRace,scores={roundNumber2=4..}] run scoreboard players set @e[tag=w,type=armor_stand] roundNumber2 1

clear @a
title @a actionbar [""]

tag @e[tag=chosenTrack] remove chosenTrack
tag @e[tag=w,type=armor_stand] remove clearImpulse
tag @e[tag=w,type=armor_stand] remove allowPVP
tag @e[tag=w,type=armor_stand] remove raining
tag @a remove playerVote1
tag @a remove playerVote2
tag @a remove playerVote3
tag @a remove noInventory
scoreboard players set @e[tag=w,type=armor_stand] scriptMove 1
scoreboard players set @e[tag=w,type=armor_stand] dropBarrier 1

#optVote
#optChoose
#optRandom
 
tag @e[tag=w,type=armor_stand] add showroundnum
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optRandom,scores={roundNumber=..4}] run function sprint_racer:random/random_track_race
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,tag=optRandom,scores={roundNumber=5..}] run function sprint_racer:random/random_track_battle
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,scores={roundNumber=..4}] run function sprint_racer:game_logic/1/_initialize
execute if entity @e[tag=w,type=armor_stand,tag=!grandprix,scores={roundNumber=5}] run function sprint_racer:game_logic/3/_initialize
execute if entity @e[tag=w,type=armor_stand,tag=grandprix] as @e[tag=w,type=armor_stand,limit=1] run function sprint_racer:game_logic/0/grand_prix_round_start

#remember to vote 2020 :))))
#edit: i'm from the future. good job ;)
execute if entity @e[tag=w,type=armor_stand,tag=remind2vote] run function sprint_racer_language:_dlc_3/remember_to_vote