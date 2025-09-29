#executed by @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand]
#(this function is BANANAS)

#################################
#SETTINGS

#for default save state:
#"underworld" track will be unbanned if and only if it's been discovered via cheats
setblock 1609 70 445 red_wool
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=46] run setblock 1609 70 445 lime_wool

#gamemodes
tag @s remove optRnB
tag @s remove optRace
tag @s remove optBattle
execute if block 1618 ~ 460 white_wool run tag @s add optRnB
execute if block 1618 ~ 460 orange_wool run tag @s add optRace
execute if block 1618 ~ 460 magenta_wool run tag @s add optBattle

#tracks
tag @s remove optVote
tag @s remove optRandom
tag @s remove optInOrder
tag @s remove optChoose
tag @s remove optRoulette
execute if block 1617 ~ 460 white_wool run tag @s add optVote
execute if block 1617 ~ 460 orange_wool run tag @s add optRandom
#note: [in order] requires both optRandom and optInOrder tags
execute if block 1617 ~ 460 magenta_wool run tag @s add optRandom
execute if block 1617 ~ 460 magenta_wool run tag @s add optInOrder
execute if block 1617 ~ 460 light_blue_wool run tag @s add optChoose
#node: [roulette] requires both optVote and optRoulette tags
execute if block 1617 ~ 460 yellow_wool run tag @s add optVote
execute if block 1617 ~ 460 yellow_wool run tag @s add optRoulette

#items
tag @s remove optItems
tag @s remove optItemsB
tag @s remove optNoItems
execute if block 1616 ~ 460 white_wool run tag @s add optItems
execute if block 1616 ~ 460 orange_wool run tag @s add optItemsB
execute if block 1616 ~ 460 magenta_wool run tag @s add optNoItems

#item balance
tag @s add optBalance
tag @s remove timeBalance
execute if block 1615 ~ 460 white_wool run tag @s add timeBalance
execute if block 1615 ~ 460 magenta_wool run tag @s remove optBalance

#extra chests
tag @s remove noExtraChest
execute if block 1614 ~ 460 orange_wool run tag @s add noExtraChest

#race mode item rule
execute if block 1613 ~ 460 white_wool run scoreboard players set @s itemPresetA 1
execute if block 1613 ~ 460 orange_wool run scoreboard players set @s itemPresetA 2
execute if block 1613 ~ 460 magenta_wool run scoreboard players set @s itemPresetA 3
execute if block 1613 ~ 460 light_blue_wool run scoreboard players set @s itemPresetA 4
execute if block 1613 ~ 460 yellow_wool run scoreboard players set @s itemPresetA 5
execute if block 1613 ~ 460 lime_wool run scoreboard players set @s itemPresetA 6
execute if block 1613 ~ 460 pink_wool run scoreboard players set @s itemPresetA 7
execute if block 1613 ~ 460 gray_wool run scoreboard players set @s itemPresetA 8
execute if block 1613 ~ 460 light_gray_wool run scoreboard players set @s itemPresetA 9
execute if block 1613 ~ 460 cyan_wool run scoreboard players set @s itemPresetA 10
execute if block 1613 ~ 460 purple_wool run scoreboard players set @s itemPresetA 11

#battle mode item rule
execute if block 1612 ~ 460 white_wool run scoreboard players set @s itemPresetB 1
execute if block 1612 ~ 460 orange_wool run scoreboard players set @s itemPresetB 2
execute if block 1612 ~ 460 magenta_wool run scoreboard players set @s itemPresetB 3
execute if block 1612 ~ 460 light_blue_wool run scoreboard players set @s itemPresetB 4
execute if block 1612 ~ 460 yellow_wool run scoreboard players set @s itemPresetB 5
execute if block 1612 ~ 460 lime_wool run scoreboard players set @s itemPresetB 6
execute if block 1612 ~ 460 pink_wool run scoreboard players set @s itemPresetB 7
execute if block 1612 ~ 460 gray_wool run scoreboard players set @s itemPresetB 8
execute if block 1612 ~ 460 light_gray_wool run scoreboard players set @s itemPresetB 9
execute if block 1612 ~ 460 cyan_wool run scoreboard players set @s itemPresetB 10
execute if block 1612 ~ 460 purple_wool run scoreboard players set @s itemPresetB 11

#difficulty ramp-up
scoreboard players set @s difficultyRamp 1
execute if block 1611 ~ 460 white_wool run scoreboard players set @s difficultyRamp 0

#endless mode
tag @s remove endlessMode
execute if block 1610 ~ 460 white_wool run tag @s add endlessMode

#bossbar speedometer
tag @s add nospeedo
execute if block 1609 ~ 460 orange_wool run tag @s remove nospeedo

#teams
tag @s remove teamplay
execute if block 1618 ~ 459 white_wool run tag @s add teamplay

#team auto balancing
tag @s add autobalance
execute if block 1617 ~ 459 orange_wool run tag @s remove teamplay

#race ai context
tag @s remove optRAIsingle
tag @s remove optRAIalways
tag @s remove optRAInever
execute if block 1616 ~ 459 white_wool run tag @s add optRAIsingle
execute if block 1616 ~ 459 orange_wool run tag @s add optRAIalways
execute if block 1616 ~ 459 magenta_wool run tag @s add optRAInever

#race ai count
tag @s remove RAIautocount
#execute if block 1615 ~ 459 white_wool run tag @s add RAIautocount
execute if block 1615 ~ 459 white_wool run scoreboard players set @s optRAIcount 4
execute if block 1615 ~ 459 orange_wool run scoreboard players set @s optRAIcount 1
execute if block 1615 ~ 459 magenta_wool run scoreboard players set @s optRAIcount 2
execute if block 1615 ~ 459 light_blue_wool run scoreboard players set @s optRAIcount 3
execute if block 1615 ~ 459 yellow_wool run scoreboard players set @s optRAIcount 4
execute if block 1615 ~ 459 lime_wool run scoreboard players set @s optRAIcount 5
execute if block 1615 ~ 459 pink_wool run scoreboard players set @s optRAIcount 6
execute if block 1615 ~ 459 gray_wool run scoreboard players set @s optRAIcount 7
execute if block 1615 ~ 459 light_gray_wool run scoreboard players set @s optRAIcount 8
execute if block 1615 ~ 459 cyan_wool run scoreboard players set @s optRAIcount 9

#battle ai context
tag @s remove optBAIsingle
tag @s remove optBAIalways
tag @s remove optBAInever
execute if block 1614 ~ 459 white_wool run tag @s add optBAIsingle
execute if block 1614 ~ 459 orange_wool run tag @s add optBAIalways
execute if block 1614 ~ 459 magenta_wool run tag @s add optBAInever

#battle ai count
tag @s remove BAIautocount
#execute if block 1613 ~ 459 white_wool run tag @s add BAIautocount
execute if block 1613 ~ 459 white_wool run scoreboard players set @s optBAIcount 4
execute if block 1613 ~ 459 orange_wool run scoreboard players set @s optBAIcount 1
execute if block 1613 ~ 459 magenta_wool run scoreboard players set @s optBAIcount 2
execute if block 1613 ~ 459 light_blue_wool run scoreboard players set @s optBAIcount 3
execute if block 1613 ~ 459 yellow_wool run scoreboard players set @s optBAIcount 4
execute if block 1613 ~ 459 lime_wool run scoreboard players set @s optBAIcount 5
execute if block 1613 ~ 459 pink_wool run scoreboard players set @s optBAIcount 6
execute if block 1613 ~ 459 gray_wool run scoreboard players set @s optBAIcount 7
execute if block 1613 ~ 459 light_gray_wool run scoreboard players set @s optBAIcount 8
execute if block 1613 ~ 459 cyan_wool run scoreboard players set @s optBAIcount 9

#ai difficulty (removed)
#execute if block 1612 ~ 459 white_wool run scoreboard players set @s optAIdiff -1
#execute if block 1612 ~ 459 orange_wool run scoreboard players set @s optAIdiff 0
#execute if block 1612 ~ 459 magenta_wool run scoreboard players set @s optAIdiff 1
#execute if block 1612 ~ 459 light_blue_wool run scoreboard players set @s optAIdiff 2
#execute if block 1612 ~ 459 yellow_wool run scoreboard players set @s optAIdiff 3

#ai rival (v1.6)
execute if block 1612 ~ 459 white_wool run tag @s remove noAIrival
execute if block 1612 ~ 459 orange_wool run tag @s add noAIrival
execute if block 1612 ~ 459 magenta_wool run tag @s add noAIrival
execute if block 1612 ~ 459 light_blue_wool run tag @s add noAIrival
execute if block 1612 ~ 459 yellow_wool run tag @s add noAIrival

#ai rubberbanding
tag @s remove noRubberBand
execute if block 1611 ~ 459 white_wool run tag @s add noRubberBand

#let ai finish?
tag @s remove allowAIfinish
execute if block 1610 ~ 459 white_wool run tag @s add allowAIfinish

#default lobby time (custom values and extreme values not supported, sorry)
scoreboard players set @s defLobbyTime 30
execute if block 1609 ~ 459 white_wool run scoreboard players set @s defLobbyTime 15
execute if block 1609 ~ 459 orange_wool run scoreboard players set @s defLobbyTime 20
execute if block 1609 ~ 459 magenta_wool run scoreboard players set @s defLobbyTime 25
execute if block 1609 ~ 459 yellow_wool run scoreboard players set @s defLobbyTime 35
execute if block 1609 ~ 459 lime_wool run scoreboard players set @s defLobbyTime 40
execute if block 1609 ~ 459 pink_wool run scoreboard players set @s defLobbyTime 45
execute if block 1609 ~ 459 gray_wool run scoreboard players set @s defLobbyTime 50
execute if block 1609 ~ 459 light_gray_wool run scoreboard players set @s defLobbyTime 55
execute if block 1609 ~ 459 cyan_wool run scoreboard players set @s defLobbyTime 60

#absorption at race start
tag @s remove absorpAlways
tag @s remove absorpNever
execute if block 1618 ~ 458 white_wool run tag @s add absorpAlways
execute if block 1618 ~ 458 orange_wool run tag @s add absorpNever

#reset music on death (does anyone actually care if I add this?)
tag @s add noMusicReset
execute if block 1617 ~ 458 orange_wool run tag @s remove noMusicReset

#nearby player invisibility
scoreboard players set @s allowInvis 0
execute if block 1616 ~ 458 orange_wool run scoreboard players set @s allowInvis 1
execute if block 1616 ~ 458 magenta_wool run scoreboard players set @s allowInvis 2
scoreboard players operation global allowInvis = @s allowInvis

#race mode game type
tag @s remove randomPresetA
scoreboard players set @s gamemodePresetA 1
execute if block 1615 ~ 458 orange_wool run scoreboard players set @s gamemodePresetA 2
execute if block 1615 ~ 458 magenta_wool run scoreboard players set @s gamemodePresetA 3
execute if block 1615 ~ 458 light_blue_wool run tag @s add randomPresetA

#battle mode game type
tag @s remove randomPresetB
scoreboard players set @s gamemodePresetB 1
execute if block 1614 ~ 458 orange_wool run scoreboard players set @s gamemodePresetB 2
execute if block 1614 ~ 458 magenta_wool run scoreboard players set @s gamemodePresetB 3
execute if block 1614 ~ 458 light_blue_wool run tag @s add randomPresetB

#grand prix loop
tag @s remove grandprixloop
execute if block 1613 ~ 458 white_wool run tag @s add grandprixloop

#grand prix sfx
tag @s remove noCrowdSFX
execute if block 1612 ~ 458 white_wool run tag @s add noCrowdSFX

#classic HUD
tag @s remove classicHUD
execute if block 1611 ~ 458 white_wool run tag @s add classicHUD

#race AI difficulty
execute if block 1610 ~ 458 white_wool run scoreboard players set @s optRAIdiff -1
execute if block 1610 ~ 458 orange_wool run scoreboard players set @s optRAIdiff 0
execute if block 1610 ~ 458 magenta_wool run scoreboard players set @s optRAIdiff 1
execute if block 1610 ~ 458 light_blue_wool run scoreboard players set @s optRAIdiff 2
execute if block 1610 ~ 458 yellow_wool run scoreboard players set @s optRAIdiff 3

#race AI add type
tag @s remove RAIautocount
execute if block 1609 ~ 458 white_wool run tag @s add RAIautocount

#battle AI difficulty
execute if block 1618 ~ 457 white_wool run scoreboard players set @s optBAIdiff -1
execute if block 1618 ~ 457 orange_wool run scoreboard players set @s optBAIdiff 0
execute if block 1618 ~ 457 magenta_wool run scoreboard players set @s optBAIdiff 1
execute if block 1618 ~ 457 light_blue_wool run scoreboard players set @s optBAIdiff 2
execute if block 1618 ~ 457 yellow_wool run scoreboard players set @s optBAIdiff 3

#battle AI add type
tag @s remove BAIautocount
execute if block 1617 ~ 457 white_wool run tag @s add BAIautocount

#battle locator bar
tag @s remove optNoLocatorBar
execute if block 1616 ~ 457 orange_wool run tag @s add optNoLocatorBar

#ai mannequins
tag @s remove optMannequinAI
execute if block 1615 ~ 457 orange_wool run tag @s add optMannequinAI

#################################
#BANNED RACE TRACKS
execute as @e[tag=trackStandR,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1] run tag @s remove rtBlacklist

#red wool = banned
execute if block 1618 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add rtBlacklist
execute if block 1617 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] add rtBlacklist
execute if block 1616 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add rtBlacklist
execute if block 1615 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add rtBlacklist
execute if block 1614 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add rtBlacklist
execute if block 1613 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add rtBlacklist
execute if block 1612 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add rtBlacklist
execute if block 1611 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add rtBlacklist
execute if block 1610 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=9}] add rtBlacklist
execute if block 1609 ~ 455 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add rtBlacklist

execute if block 1618 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add rtBlacklist
execute if block 1617 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] add rtBlacklist
execute if block 1616 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add rtBlacklist
execute if block 1615 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add rtBlacklist
execute if block 1614 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=15}] add rtBlacklist
execute if block 1613 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=16}] add rtBlacklist
execute if block 1612 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=17}] add rtBlacklist
execute if block 1611 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=18}] add rtBlacklist
execute if block 1610 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=19}] add rtBlacklist
execute if block 1609 ~ 454 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] add rtBlacklist

execute if block 1618 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=21}] add rtBlacklist
execute if block 1617 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=22}] add rtBlacklist
execute if block 1616 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=23}] add rtBlacklist
execute if block 1615 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=24}] add rtBlacklist
execute if block 1614 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=25}] add rtBlacklist
execute if block 1613 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=26}] add rtBlacklist
execute if block 1612 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=27}] add rtBlacklist
execute if block 1611 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=28}] add rtBlacklist
execute if block 1610 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=29}] add rtBlacklist
execute if block 1609 ~ 453 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=30}] add rtBlacklist

execute if block 1618 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=31}] add rtBlacklist
execute if block 1617 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=32}] add rtBlacklist
execute if block 1616 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=33}] add rtBlacklist
execute if block 1615 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=34}] add rtBlacklist
execute if block 1614 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=35}] add rtBlacklist
execute if block 1613 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=36}] add rtBlacklist
execute if block 1612 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37}] add rtBlacklist
execute if block 1611 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=38}] add rtBlacklist
execute if block 1610 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=39}] add rtBlacklist
execute if block 1609 ~ 452 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=40}] add rtBlacklist

execute if block 1618 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=41}] add rtBlacklist
execute if block 1617 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=42}] add rtBlacklist
execute if block 1616 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=43}] add rtBlacklist
execute if block 1615 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=44}] add rtBlacklist
execute if block 1614 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=45}] add rtBlacklist
execute if block 1613 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=46}] add rtBlacklist
execute if block 1612 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=47}] add rtBlacklist
execute if block 1611 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=48}] add rtBlacklist
execute if block 1610 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=49}] add rtBlacklist
execute if block 1609 ~ 451 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=50}] add rtBlacklist

execute if block 1618 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=51}] add rtBlacklist
execute if block 1617 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=52}] add rtBlacklist
execute if block 1616 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=53}] add rtBlacklist
execute if block 1615 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=54}] add rtBlacklist
execute if block 1614 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=55}] add rtBlacklist
execute if block 1613 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=56}] add rtBlacklist
execute if block 1612 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=57}] add rtBlacklist
execute if block 1611 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=58}] add rtBlacklist
execute if block 1610 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=59}] add rtBlacklist
execute if block 1609 ~ 450 red_wool run tag @e[limit=1,tag=trackStandR,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=60}] add rtBlacklist

#COPPA mode: Casino Chase always banned no matter what
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=COPPA] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=46}] add rtBlacklist

#################################
#BANNED BATTLE TRACKS
execute as @e[tag=trackStandB,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1] run tag @s remove btBlacklist

execute if block 1618 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add btBlacklist
execute if block 1617 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] add btBlacklist
execute if block 1616 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add btBlacklist
execute if block 1615 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add btBlacklist
execute if block 1614 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add btBlacklist
execute if block 1613 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add btBlacklist
execute if block 1612 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add btBlacklist
execute if block 1611 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add btBlacklist
execute if block 1610 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=9}] add btBlacklist
execute if block 1609 ~ 449 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add btBlacklist

execute if block 1618 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add btBlacklist
execute if block 1617 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] add btBlacklist
execute if block 1616 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add btBlacklist
execute if block 1615 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add btBlacklist
execute if block 1614 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=15}] add btBlacklist
execute if block 1613 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=16}] add btBlacklist
execute if block 1612 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=17}] add btBlacklist
execute if block 1611 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=18}] add btBlacklist
execute if block 1610 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=19}] add btBlacklist
execute if block 1609 ~ 448 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] add btBlacklist

execute if block 1618 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=21}] add btBlacklist
execute if block 1617 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=22}] add btBlacklist
execute if block 1616 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=23}] add btBlacklist
execute if block 1615 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=24}] add btBlacklist
execute if block 1614 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=25}] add btBlacklist
execute if block 1613 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=26}] add btBlacklist
execute if block 1612 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=27}] add btBlacklist
execute if block 1611 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=28}] add btBlacklist
execute if block 1610 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=29}] add btBlacklist
execute if block 1609 ~ 447 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=30}] add btBlacklist

execute if block 1618 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=31}] add btBlacklist
execute if block 1617 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=32}] add btBlacklist
execute if block 1616 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=33}] add btBlacklist
execute if block 1615 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=34}] add btBlacklist
execute if block 1614 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=35}] add btBlacklist
execute if block 1613 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=36}] add btBlacklist
execute if block 1612 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37}] add btBlacklist
execute if block 1611 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=38}] add btBlacklist
execute if block 1610 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=39}] add btBlacklist
execute if block 1609 ~ 446 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=40}] add btBlacklist

execute if block 1618 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=41}] add btBlacklist
execute if block 1617 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=42}] add btBlacklist
execute if block 1616 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=43}] add btBlacklist
execute if block 1615 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=44}] add btBlacklist
execute if block 1614 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=45}] add btBlacklist
execute if block 1613 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=46}] add btBlacklist
execute if block 1612 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=47}] add btBlacklist
execute if block 1611 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=48}] add btBlacklist
execute if block 1610 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=49}] add btBlacklist
execute if block 1609 ~ 445 red_wool run tag @e[limit=1,tag=trackStandB,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=50}] add btBlacklist

#################################
#BANNED ITEMS

#first we un-ban all items
tag @s remove banBattleBat
tag @s remove banNo1
tag @s remove banNo2
tag @s remove banNo3
tag @s remove banNo4
tag @s remove banNo5
tag @s remove banNo6
tag @s remove banNo7
tag @s remove banNo8
tag @s remove banNo9
tag @s remove banNo10
tag @s remove banNo11
tag @s remove banNo12
tag @s remove banNo13
tag @s remove banNo14
tag @s remove banNo15
tag @s remove banNo16
tag @s remove banNo17
tag @s remove banNo18
tag @s remove banNo19
tag @s remove banNo20

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..20}] remove capsuleBan
fill 1601 79 422 1621 79 433 oak_log replace dark_oak_log

#now we do bans based on the new data we be reading
scoreboard players set #no_cat_check value 1
execute if block 1619 ~ 443 red_wool positioned 1601 78 422 run function sprint_racer:game_logic/0/toggle_item/0
execute if block 1618 ~ 443 red_wool positioned 1603 78 422 run function sprint_racer:game_logic/0/toggle_item/1
execute if block 1617 ~ 443 red_wool positioned 1605 78 422 run function sprint_racer:game_logic/0/toggle_item/2
execute if block 1616 ~ 443 red_wool positioned 1607 78 422 run function sprint_racer:game_logic/0/toggle_item/3
execute if block 1615 ~ 443 red_wool positioned 1609 78 422 run function sprint_racer:game_logic/0/toggle_item/4
execute if block 1614 ~ 443 red_wool positioned 1611 78 422 run function sprint_racer:game_logic/0/toggle_item/5
execute if block 1613 ~ 443 red_wool positioned 1613 78 422 run function sprint_racer:game_logic/0/toggle_item/6
execute if block 1612 ~ 443 red_wool positioned 1615 78 422 run function sprint_racer:game_logic/0/toggle_item/7
execute if block 1611 ~ 443 red_wool positioned 1617 78 422 run function sprint_racer:game_logic/0/toggle_item/8
execute if block 1610 ~ 443 red_wool positioned 1619 78 422 run function sprint_racer:game_logic/0/toggle_item/9
execute if block 1609 ~ 443 red_wool positioned 1621 78 422 run function sprint_racer:game_logic/0/toggle_item/10
execute if block 1618 ~ 442 red_wool positioned 1603 78 433 run function sprint_racer:game_logic/0/toggle_item/11
execute if block 1617 ~ 442 red_wool positioned 1605 78 433 run function sprint_racer:game_logic/0/toggle_item/12
execute if block 1616 ~ 442 red_wool positioned 1607 78 433 run function sprint_racer:game_logic/0/toggle_item/13
execute if block 1615 ~ 442 red_wool positioned 1609 78 433 run function sprint_racer:game_logic/0/toggle_item/14
execute if block 1614 ~ 442 red_wool positioned 1611 78 433 run function sprint_racer:game_logic/0/toggle_item/15
execute if block 1613 ~ 442 red_wool positioned 1613 78 433 run function sprint_racer:game_logic/0/toggle_item/16
execute if block 1612 ~ 442 red_wool positioned 1615 78 433 run function sprint_racer:game_logic/0/toggle_item/17
execute if block 1611 ~ 442 red_wool positioned 1617 78 433 run function sprint_racer:game_logic/0/toggle_item/18
execute if block 1610 ~ 442 red_wool positioned 1619 78 433 run function sprint_racer:game_logic/0/toggle_item/19
execute if block 1609 ~ 442 red_wool positioned 1621 78 433 run function sprint_racer:game_logic/0/toggle_item/20

#check chest categories for voids
function sprint_racer:game_logic/0/toggle_item/check_color_red
function sprint_racer:game_logic/0/toggle_item/check_color_yellow
function sprint_racer:game_logic/0/toggle_item/check_color_blue
function sprint_racer:game_logic/0/toggle_item/check_color_green
scoreboard players set #no_cat_check value 0
function sprint_racer:game_logic/0/toggle_item/check_color_purple
#--why do we do this when these checks are already done in each toggle_item function?
#--to avoid edge cases, of course!
#--if NO items are banned in a color category, these checks wouldn't happen automatically
#--if we didn't do them again manually, loading an item category with no bans over an item category that had everything banned would cause issues

#################################
#CHEATS

#here we pass it over to @e[tag=cheats,x=1548,y=148,z=422,distance=..1] so we can avoid @e-ing a million times
execute as @e[tag=cheats,x=1548,y=148,z=422,distance=..1,limit=1,type=armor_stand] run function sprint_racer:game_logic/0/save_state/load_block_state_cheats
function sprint_racer:cheats/check_for_cheats

#################################
#CUSTOM AI SETTINGS

execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] positioned 1626 ~ 455 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] positioned 1626 ~ 452 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] positioned 1626 ~ 449 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] positioned 1626 ~ 446 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] positioned 1626 ~ 443 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] positioned 1627 ~ 455 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] positioned 1627 ~ 452 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] positioned 1627 ~ 449 run function sprint_racer:game_logic/0/save_state/load_block_state_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] positioned 1627 ~ 446 run function sprint_racer:game_logic/0/save_state/load_block_state_ai

#################################
#MISC

#force player team
scoreboard players set @s forcePlayerTeam 0
execute if block 1627 ~ 457 orange_wool run scoreboard players set @s forcePlayerTeam 1
execute if block 1627 ~ 457 magenta_wool run scoreboard players set @s forcePlayerTeam 2

#custom lap
scoreboard players set @s customLapType 1
execute if block 1627 ~ 443 orange_wool run scoreboard players set @s customLapType 2

#custom lap offset
scoreboard players set @s customLapOffset 0
execute unless block 1627 ~ 442 white_wool run function sprint_racer:game_logic/0/save_state/load_block_state_lap_offset

#custom lap multiplier
scoreboard players set @s customLapMult 100
execute unless block 1627 ~ 441 yellow_wool run function sprint_racer:game_logic/0/save_state/load_block_state_lap_multiply

#################################

#now... restart the lobby!

execute unless score #noLobbyReload value matches 1 run scoreboard players set @s roundNumber 1
execute unless score #noLobbyReload value matches 1 run scoreboard players set @s roundNumber2 1
execute unless score #noLobbyReload value matches 1 run function sprint_racer:game_logic/0/clear_points
execute unless score #noLobbyReload value matches 1 if entity @s[scores={gameState=0}] run tag @s add noskip2next
execute unless score #noLobbyReload value matches 1 if entity @s[type=armor_stand,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute unless score #noLobbyReload value matches 1 if entity @s[scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute unless score #noLobbyReload value matches 1 if entity @s[scores={gameState=0}] run function sprint_racer:game_logic/0/sidebar/__index_main
execute unless score #noLobbyReload value matches 1 if entity @s[scores={gameState=0}] run function sprint_racer:game_logic/0/props/summon_props
function sprint_racer_language:_dlc_4/lobby/options/update_all_options_signs
function sprint_racer_language:_dlc_6/lobby/options/update_all_options_signs

#say what's enabled
execute if score #noLobbyReload value matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=cheatdetected] as @a[tag=!minChat] run function sprint_racer_language:_dlc_6/join_messages/cheats_are_enabled

scoreboard players set #noLobbyReload value 0