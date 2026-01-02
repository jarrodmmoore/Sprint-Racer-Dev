#executed by @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand]

#need to fill everything with stone to make sure command blocks get placed with the new settings stored in them
fill 1609 ~ 441 1627 ~ 460 light_gray_terracotta
fill 1620 ~ 441 1624 ~ 460 red_wool

#################################
#SETTINGS

#gamemodes
execute if entity @s[tag=optRnB] run setblock 1618 ~ 460 white_wool
execute if entity @s[tag=optRace] run setblock 1618 ~ 460 orange_wool
execute if entity @s[tag=optBattle] run setblock 1618 ~ 460 magenta_wool

#tracks
execute if entity @s[tag=optVote] run setblock 1617 ~ 460 white_wool
execute if entity @s[tag=optRandom] run setblock 1617 ~ 460 orange_wool
execute if entity @s[tag=optInOrder] run setblock 1617 ~ 460 magenta_wool
execute if entity @s[tag=optChoose] run setblock 1617 ~ 460 light_blue_wool
execute if entity @s[tag=optRoulette] run setblock 1617 ~ 460 yellow_wool

#items
execute if entity @s[tag=optItems] run setblock 1616 ~ 460 white_wool
execute if entity @s[tag=optItemsB] run setblock 1616 ~ 460 orange_wool
execute if entity @s[tag=optNoItems] run setblock 1616 ~ 460 magenta_wool

#item balance
execute if entity @s[tag=timeBalance,tag=optBalance] run setblock 1615 ~ 460 white_wool
execute if entity @s[tag=!timeBalance,tag=optBalance] run setblock 1615 ~ 460 orange_wool
execute if entity @s[tag=!timeBalance,tag=!optBalance] run setblock 1615 ~ 460 magenta_wool

#extra chests
execute if entity @s[tag=!noExtraChest] run setblock 1614 ~ 460 white_wool
execute if entity @s[tag=noExtraChest] run setblock 1614 ~ 460 orange_wool

#race mode item rule
execute if entity @s[scores={itemPresetA=1}] run setblock 1613 ~ 460 white_wool
execute if entity @s[scores={itemPresetA=2}] run setblock 1613 ~ 460 orange_wool
execute if entity @s[scores={itemPresetA=3}] run setblock 1613 ~ 460 magenta_wool
execute if entity @s[scores={itemPresetA=4}] run setblock 1613 ~ 460 light_blue_wool
execute if entity @s[scores={itemPresetA=5}] run setblock 1613 ~ 460 yellow_wool
execute if entity @s[scores={itemPresetA=6}] run setblock 1613 ~ 460 lime_wool
execute if entity @s[scores={itemPresetA=7}] run setblock 1613 ~ 460 pink_wool
execute if entity @s[scores={itemPresetA=8}] run setblock 1613 ~ 460 gray_wool
execute if entity @s[scores={itemPresetA=9}] run setblock 1613 ~ 460 light_gray_wool
execute if entity @s[scores={itemPresetA=10}] run setblock 1613 ~ 460 cyan_wool
execute if entity @s[scores={itemPresetA=11}] run setblock 1613 ~ 460 purple_wool

#battle mode item rule
execute if entity @s[scores={itemPresetB=1}] run setblock 1612 ~ 460 white_wool
execute if entity @s[scores={itemPresetB=2}] run setblock 1612 ~ 460 orange_wool
execute if entity @s[scores={itemPresetB=3}] run setblock 1612 ~ 460 magenta_wool
execute if entity @s[scores={itemPresetB=4}] run setblock 1612 ~ 460 light_blue_wool
execute if entity @s[scores={itemPresetB=5}] run setblock 1612 ~ 460 yellow_wool
execute if entity @s[scores={itemPresetB=6}] run setblock 1612 ~ 460 lime_wool
execute if entity @s[scores={itemPresetB=7}] run setblock 1612 ~ 460 pink_wool
execute if entity @s[scores={itemPresetB=8}] run setblock 1612 ~ 460 gray_wool
execute if entity @s[scores={itemPresetB=9}] run setblock 1612 ~ 460 light_gray_wool
execute if entity @s[scores={itemPresetB=10}] run setblock 1612 ~ 460 cyan_wool
execute if entity @s[scores={itemPresetB=11}] run setblock 1612 ~ 460 purple_wool

#difficulty ramp-up
execute if entity @s[scores={difficultyRamp=0}] run setblock 1611 ~ 460 white_wool
execute if entity @s[scores={difficultyRamp=1}] run setblock 1611 ~ 460 orange_wool

#endless mode
execute if entity @s[tag=endlessMode] run setblock 1610 ~ 460 white_wool
execute if entity @s[tag=!endlessMode] run setblock 1610 ~ 460 orange_wool

#bossbar speedometer
execute if entity @s[tag=nospeedo] run setblock 1609 ~ 460 white_wool
execute if entity @s[tag=!nospeedo] run setblock 1609 ~ 460 orange_wool

#teams
execute if entity @s[tag=teamplay] run setblock 1618 ~ 459 white_wool
execute if entity @s[tag=!teamplay] run setblock 1618 ~ 459 orange_wool

#team auto balancing
execute if entity @s[tag=autobalance] run setblock 1617 ~ 459 white_wool
execute if entity @s[tag=!autobalance] run setblock 1617 ~ 459 orange_wool

#race ai context
execute if entity @s[tag=optRAIsingle] run setblock 1616 ~ 459 white_wool
execute if entity @s[tag=optRAIalways] run setblock 1616 ~ 459 orange_wool
execute if entity @s[tag=optRAInever] run setblock 1616 ~ 459 magenta_wool

#race ai count
execute if entity @s[tag=RAIautocount] run setblock 1615 ~ 459 white_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=1}] run setblock 1615 ~ 459 orange_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=2}] run setblock 1615 ~ 459 magenta_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=3}] run setblock 1615 ~ 459 light_blue_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=4}] run setblock 1615 ~ 459 yellow_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=5}] run setblock 1615 ~ 459 lime_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=6}] run setblock 1615 ~ 459 pink_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=7}] run setblock 1615 ~ 459 gray_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=8}] run setblock 1615 ~ 459 light_gray_wool
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=9}] run setblock 1615 ~ 459 cyan_wool

#battle ai context
execute if entity @s[tag=optBAIsingle] run setblock 1614 ~ 459 white_wool
execute if entity @s[tag=optBAIalways] run setblock 1614 ~ 459 orange_wool
execute if entity @s[tag=optBAInever] run setblock 1614 ~ 459 magenta_wool

#battle ai count
execute if entity @s[tag=BAIautocount] run setblock 1613 ~ 459 white_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=1}] run setblock 1613 ~ 459 orange_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=2}] run setblock 1613 ~ 459 magenta_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=3}] run setblock 1613 ~ 459 light_blue_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=4}] run setblock 1613 ~ 459 yellow_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=5}] run setblock 1613 ~ 459 lime_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=6}] run setblock 1613 ~ 459 pink_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=7}] run setblock 1613 ~ 459 gray_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=8}] run setblock 1613 ~ 459 light_gray_wool
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=9}] run setblock 1613 ~ 459 cyan_wool

#ai difficulty (removed)
#execute if entity @s[scores={optAIdiff=-1}] run setblock 1612 ~ 459 white_wool
#execute if entity @s[scores={optAIdiff=0}] run setblock 1612 ~ 459 orange_wool
#execute if entity @s[scores={optAIdiff=1}] run setblock 1612 ~ 459 magenta_wool
#execute if entity @s[scores={optAIdiff=2}] run setblock 1612 ~ 459 light_blue_wool
#execute if entity @s[scores={optAIdiff=3}] run setblock 1612 ~ 459 yellow_wool

#ai rival
execute if entity @s[tag=!noAIrival] run setblock 1612 ~ 459 white_wool
execute if entity @s[tag=noAIrival] run setblock 1612 ~ 459 orange_wool

#ai rubberbanding
execute if entity @s[tag=noRubberBand] run setblock 1611 ~ 459 white_wool
execute if entity @s[tag=!noRubberBand] run setblock 1611 ~ 459 orange_wool

#let ai finish?
execute if entity @s[tag=allowAIfinish] run setblock 1610 ~ 459 white_wool
execute if entity @s[tag=!allowAIfinish] run setblock 1610 ~ 459 orange_wool

#default lobby time (custom values and extreme values not supported, sorry)
execute if entity @s[scores={defLobbyTime=..15}] run setblock 1609 ~ 459 white_wool
execute if entity @s[scores={defLobbyTime=16..20}] run setblock 1609 ~ 459 orange_wool
execute if entity @s[scores={defLobbyTime=21..25}] run setblock 1609 ~ 459 magenta_wool
execute if entity @s[scores={defLobbyTime=26..30}] run setblock 1609 ~ 459 light_blue_wool
execute if entity @s[scores={defLobbyTime=31..35}] run setblock 1609 ~ 459 yellow_wool
execute if entity @s[scores={defLobbyTime=36..40}] run setblock 1609 ~ 459 lime_wool
execute if entity @s[scores={defLobbyTime=41..45}] run setblock 1609 ~ 459 pink_wool
execute if entity @s[scores={defLobbyTime=46..50}] run setblock 1609 ~ 459 gray_wool
execute if entity @s[scores={defLobbyTime=51..55}] run setblock 1609 ~ 459 light_gray_wool
execute if entity @s[scores={defLobbyTime=56..}] run setblock 1609 ~ 459 cyan_wool

#absorption at race start
execute if entity @s[tag=absorpAlways] run setblock 1618 ~ 458 white_wool
execute if entity @s[tag=absorpNever] run setblock 1618 ~ 458 orange_wool
execute if entity @s[tag=!absorpAlways,tag=!absorpNever] run setblock 1618 ~ 458 magenta_wool

#reset music on death (does anyone actually care if I add this?)
execute if entity @s[tag=noMusicReset] run setblock 1617 ~ 458 white_wool
execute if entity @s[tag=!noMusicReset] run setblock 1617 ~ 458 orange_wool

#nearby player invisibility
execute if entity @s[scores={allowInvis=0}] run setblock 1616 ~ 458 white_wool
execute if entity @s[scores={allowInvis=1}] run setblock 1616 ~ 458 orange_wool
execute if entity @s[scores={allowInvis=2}] run setblock 1616 ~ 458 magenta_wool

#race mode game type
execute if entity @s[tag=!randomPresetA,scores={gamemodePresetA=1}] run setblock 1615 ~ 458 white_wool
execute if entity @s[tag=!randomPresetA,scores={gamemodePresetA=2}] run setblock 1615 ~ 458 orange_wool
execute if entity @s[tag=!randomPresetA,scores={gamemodePresetA=3}] run setblock 1615 ~ 458 magenta_wool
execute if entity @s[tag=randomPresetA] run setblock 1615 ~ 458 light_blue_wool

#battle mode game type
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=1}] run setblock 1614 ~ 458 white_wool
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=2}] run setblock 1614 ~ 458 orange_wool
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=3}] run setblock 1614 ~ 458 magenta_wool
execute if entity @s[tag=randomPresetB] run setblock 1614 ~ 458 light_blue_wool

#grand prix loop
execute if entity @s[tag=grandprixloop] run setblock 1613 ~ 458 white_wool
execute if entity @s[tag=!grandprixloop] run setblock 1613 ~ 458 orange_wool

#grand prix sfx
execute if entity @s[tag=noCrowdSFX] run setblock 1612 ~ 458 white_wool
execute if entity @s[tag=!noCrowdSFX] run setblock 1612 ~ 458 orange_wool

#classic HUD
execute if entity @s[tag=classicHUD] run setblock 1611 ~ 458 white_wool
execute if entity @s[tag=!classicHUD] run setblock 1611 ~ 458 orange_wool

#race AI difficulty
execute if entity @s[scores={optRAIdiff=-1}] run setblock 1610 ~ 458 white_wool
execute if entity @s[scores={optRAIdiff=0}] run setblock 1610 ~ 458 orange_wool
execute if entity @s[scores={optRAIdiff=1}] run setblock 1610 ~ 458 magenta_wool
execute if entity @s[scores={optRAIdiff=2}] run setblock 1610 ~ 458 light_blue_wool
execute if entity @s[scores={optRAIdiff=3}] run setblock 1610 ~ 458 yellow_wool

#race AI add type
execute if entity @s[tag=RAIautocount] run setblock 1609 ~ 458 white_wool
execute if entity @s[tag=!RAIautocount] run setblock 1609 ~ 458 orange_wool

#battle AI difficulty
execute if entity @s[scores={optBAIdiff=-1}] run setblock 1618 ~ 457 white_wool
execute if entity @s[scores={optBAIdiff=0}] run setblock 1618 ~ 457 orange_wool
execute if entity @s[scores={optBAIdiff=1}] run setblock 1618 ~ 457 magenta_wool
execute if entity @s[scores={optBAIdiff=2}] run setblock 1618 ~ 457 light_blue_wool
execute if entity @s[scores={optBAIdiff=3}] run setblock 1618 ~ 457 yellow_wool

#battle AI add type
execute if entity @s[tag=BAIautocount] run setblock 1617 ~ 457 white_wool
execute if entity @s[tag=!BAIautocount] run setblock 1617 ~ 457 orange_wool

#battle locator bar
execute if entity @s[tag=!optNoLocatorBar] run setblock 1616 ~ 457 white_wool
execute if entity @s[tag=optNoLocatorBar] run setblock 1616 ~ 457 orange_wool

#mannequin ais
execute if entity @s[tag=!optMannequinAI] run setblock 1615 ~ 457 white_wool
execute if entity @s[tag=optMannequinAI] run setblock 1615 ~ 457 orange_wool

#################################
#BANNED RACE TRACKS

fill 1609 ~ 450 1618 ~ 455 lime_wool
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=trackStandR,tag=rtBlacklist] run function sprint_racer:game_logic/0/save_state/save_banned_race_track

#################################
#BANNED BATTLE TRACKS

fill 1609 ~ 445 1618 ~ 449 lime_wool
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=trackStandB,tag=btBlacklist] run function sprint_racer:game_logic/0/save_state/save_banned_battle_track

#################################
#BANNED ITEMS

setblock 1619 ~ 443 lime_wool
execute if entity @s[tag=banBattleBat] run setblock 1619 ~ 443 red_wool
execute if entity @s[tag=banEnchantBattleBat] run setblock 1619 ~ 443 yellow_wool
fill 1609 ~ 442 1618 ~ 443 lime_wool
execute if entity @s[tag=banNo1] run setblock 1618 ~ 443 red_wool
execute if entity @s[tag=banNo2] run setblock 1617 ~ 443 red_wool
execute if entity @s[tag=banNo3] run setblock 1616 ~ 443 red_wool
execute if entity @s[tag=banNo4] run setblock 1615 ~ 443 red_wool
execute if entity @s[tag=banNo5] run setblock 1614 ~ 443 red_wool
execute if entity @s[tag=banNo6] run setblock 1613 ~ 443 red_wool
execute if entity @s[tag=banNo7] run setblock 1612 ~ 443 red_wool
execute if entity @s[tag=banNo8] run setblock 1611 ~ 443 red_wool
execute if entity @s[tag=banNo9] run setblock 1610 ~ 443 red_wool
execute if entity @s[tag=banNo10] run setblock 1609 ~ 443 red_wool
execute if entity @s[tag=banNo11] run setblock 1618 ~ 442 red_wool
execute if entity @s[tag=banNo12] run setblock 1617 ~ 442 red_wool
execute if entity @s[tag=banNo13] run setblock 1616 ~ 442 red_wool
execute if entity @s[tag=banNo14] run setblock 1615 ~ 442 red_wool
execute if entity @s[tag=banNo15] run setblock 1614 ~ 442 red_wool
execute if entity @s[tag=banNo16] run setblock 1613 ~ 442 red_wool
execute if entity @s[tag=banNo17] run setblock 1612 ~ 442 red_wool
execute if entity @s[tag=banNo18] run setblock 1611 ~ 442 red_wool
execute if entity @s[tag=banNo19] run setblock 1610 ~ 442 red_wool
execute if entity @s[tag=banNo20] run setblock 1609 ~ 442 red_wool

execute if entity @s[tag=banEnchant1] run setblock 1618 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant2] run setblock 1617 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant3] run setblock 1616 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant4] run setblock 1615 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant5] run setblock 1614 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant6] run setblock 1613 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant7] run setblock 1612 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant8] run setblock 1611 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant9] run setblock 1610 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant10] run setblock 1609 ~ 443 yellow_wool
execute if entity @s[tag=banEnchant11] run setblock 1618 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant12] run setblock 1617 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant13] run setblock 1616 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant14] run setblock 1615 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant15] run setblock 1614 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant16] run setblock 1613 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant17] run setblock 1612 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant18] run setblock 1611 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant19] run setblock 1610 ~ 442 yellow_wool
execute if entity @s[tag=banEnchant20] run setblock 1609 ~ 442 yellow_wool

#################################
#CHEATS

fill 1620 ~ 441 1622 ~ 460 red_wool
execute as @e[tag=cheats,x=1548,y=148,z=422,distance=..1,limit=1,type=armor_stand] run function sprint_racer:game_logic/0/save_state/save_cheats

#################################
#AI
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] positioned 1626 ~ 455 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] positioned 1626 ~ 452 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] positioned 1626 ~ 449 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] positioned 1626 ~ 446 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] positioned 1626 ~ 443 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] positioned 1627 ~ 455 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] positioned 1627 ~ 452 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] positioned 1627 ~ 449 run function sprint_racer:game_logic/0/save_state/save_ai
execute as @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] positioned 1627 ~ 446 run function sprint_racer:game_logic/0/save_state/save_ai

#################################
#MISC

#force player team
execute if entity @s[scores={forcePlayerTeam=0}] run setblock 1627 ~ 457 white_wool
execute if entity @s[scores={forcePlayerTeam=1}] run setblock 1627 ~ 457 orange_wool
execute if entity @s[scores={forcePlayerTeam=2}] run setblock 1627 ~ 457 magenta_wool

#custom lap
execute if entity @s[scores={customLapType=1}] run setblock 1627 ~ 443 white_wool
execute if entity @s[scores={customLapType=2}] run setblock 1627 ~ 443 orange_wool


#custom lap offset
execute if entity @s[scores={customLapOffset=0}] run setblock 1627 ~ 442 white_wool
execute unless entity @s[scores={customLapOffset=0}] run function sprint_racer:game_logic/0/save_state/save_lap_offset

#custom lap multiplier
execute if entity @s[scores={customLapMult=100}] run setblock 1627 ~ 441 yellow_wool
execute unless entity @s[scores={customLapMult=100}] run function sprint_racer:game_logic/0/save_state/save_lap_multiply
