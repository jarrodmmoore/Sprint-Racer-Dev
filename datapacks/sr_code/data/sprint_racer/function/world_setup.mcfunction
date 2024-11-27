#world spawn
setworldspawn 1634 90 406

#don't let the map freak out
scoreboard players set #wExists value 100
scoreboard players set #wHasScore value 100

#fix duplicate w problem that may happen with bad worldspawn or fussy plugins
scoreboard players set global math 0
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run scoreboard players add global math 1
execute unless score global math matches 1 run kill @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand]
execute unless score global math matches 1 run kill @e[name="w"]

#important armor stand locations
#w: 1560 150 406
#tag=random: 1548 155 406
#votes1,2,3: 1548 155 390
#cheats: 1548 148 422
#customtrack: 1560 80 422
#^
#these armor stands are in different chunks to take advantage of chunkLimited selectors

#deal with armor stands, especially "w"
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run summon armor_stand 1560 150 406 {CustomName:'{"text":"w"}',NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["forceGS","w"]}
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=forceGS] gameState 0
tag @e[tag=forceGS] remove forceGS
execute positioned 1548 155 406 run function sprint_racer:random/summon_stands
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRnB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRace
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optBattle
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optVote
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRandom
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optBalance
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add nospeedo
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRAIsingle
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRAInever
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRAIalways
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optBAIsingle
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optBAIalways
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optBAInever

#more options stuff
scoreboard objectives add optAIdiff dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optAIdiff 0
scoreboard objectives add optRAIcount dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optRAIcount 4
scoreboard objectives add optBAIcount dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIcount 4
scoreboard objectives add allowInvis dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 0
scoreboard players set global allowInvis 0

#music stuff
scoreboard objectives add soundtrack dummy
scoreboard objectives add musicTime dummy
scoreboard objectives add BGMtrack dummy
scoreboard objectives add prevBGM dummy
scoreboard objectives add BGMcontrol trigger

#cheat armor stand
function sprint_racer:cheats/clear_all_cheats

#cheats stuff
scoreboard objectives add sadist dummy
scoreboard objectives add playerkart dummy
scoreboard objectives add revengeMine dummy
scoreboard objectives add revengeTime dummy
scoreboard objectives add teleportCount dummy
scoreboard objectives add viewCheats trigger
scoreboard objectives add randomizerTime dummy

#gamerules
difficulty normal
gamerule doMobSpawning false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobLoot false
gamerule doWeatherCycle false
gamerule keepInventory false
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule spawnChunkRadius 10
gamerule spectatorsGenerateChunks true
gamerule disableRaids true
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule fallDamage true

#bossbars
bossbar add speedo {"text":"..."}
bossbar set minecraft:speedo color white
bossbar set minecraft:speedo style progress
bossbar set minecraft:speedo max 10000
bossbar add menutimer {"text":"name"}
bossbar set minecraft:menutimer color white
bossbar set minecraft:menutimer style notched_10
bossbar set minecraft:menutimer max 800
bossbar add control_openwings {"text":"..."}
bossbar set control_openwings color blue
bossbar set control_openwings max 1
bossbar set control_openwings value 1
bossbar add control_holdtosprint {"text":"..."}
bossbar set control_holdtosprint color blue
bossbar set control_holdtosprint max 1
bossbar set control_holdtosprint value 1
bossbar add control_daggerattack {"text":"..."}
bossbar set control_daggerattack color blue
bossbar set control_daggerattack max 1
bossbar set control_daggerattack value 1
bossbar add readyprogress {"text":"..."}
bossbar add unreadyprogress {"text":"..."}
bossbar add gauntlettime {"text":"..."}
bossbar set gauntlettime color white
bossbar set gauntlettime max 11980
bossbar set gauntlettime style progress
bossbar add freeroam {"text":"..."}
bossbar set freeroam color green
bossbar set freeroam max 1
bossbar set freeroam style progress



#SCOREBOARD

#LEVEL EDITOR
scoreboard objectives add snowball minecraft.used:minecraft.snowball
scoreboard objectives add enderPearl minecraft.used:minecraft.ender_pearl

#custom track stuff
scoreboard objectives add customTrackID dummy
scoreboard objectives add customDummyID dummy
scoreboard objectives add customTrackBID dummy
scoreboard objectives add customDummyBID dummy
scoreboard objectives add customTrackTime dummy
scoreboard objectives add customTWeather dummy
scoreboard objectives add customTTargets dummy

#TEAMS
team add player
team modify player color aqua
team modify player friendlyFire true
team modify player collisionRule never
team add playerDamaged1
team modify playerDamaged1 color aqua
team modify playerDamaged1 friendlyFire true
team modify playerDamaged1 collisionRule never
team add playerDamaged2
team modify playerDamaged2 color aqua
team modify playerDamaged2 friendlyFire true
team modify playerDamaged2 collisionRule never
team add playerFinished
team modify playerFinished color yellow
team modify playerFinished friendlyFire false
team modify playerFinished collisionRule never
team add spectator
team modify spectator color light_purple
team modify spectator friendlyFire false
team modify spectator collisionRule never
team add colorAqua
team modify colorAqua color aqua
team add colorRed
team modify colorRed color red
team add colorYellow
team modify colorYellow color yellow
team add colorGray
team modify colorGray color gray
team add colorGold
team modify colorGold color gold

#mote teams stuff
scoreboard objectives add teamCount dummy
scoreboard objectives add previousTeam dummy

#important/misc
scoreboard objectives add join minecraft.custom:minecraft.leave_game
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add death2 minecraft.custom:minecraft.deaths
scoreboard objectives add playerCount dummy
scoreboard objectives add playerCountB dummy
scoreboard objectives add playerCountC dummy
scoreboard objectives add playerCountI dummy
scoreboard objectives add playerState dummy
scoreboard objectives add playerStateB dummy
scoreboard objectives add lifespan dummy
scoreboard objectives add carrotInput minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add inputCooldown dummy
scoreboard objectives add startType dummy
scoreboard objectives add timeRemaining dummy
scoreboard objectives add timeRemaining2 dummy
scoreboard objectives add worldmapID dummy
scoreboard objectives add nodeTimeCycle dummy
scoreboard objectives add nodeState dummy
scoreboard objectives add itemBlockState dummy
scoreboard objectives add itemCooldown dummy
scoreboard objectives add itemCooldown2 dummy
scoreboard objectives add itemLuck dummy
scoreboard objectives add enchantQty dummy
scoreboard objectives add math dummy
scoreboard objectives add math2 dummy
scoreboard objectives add repeatCount dummy
scoreboard objectives add outBounds dummy
scoreboard objectives add outBTimer dummy
scoreboard objectives add hpSet dummy
scoreboard objectives add readyState dummy
scoreboard objectives add unReadyCount dummy
scoreboard objectives add readyCount dummy
scoreboard objectives add readyRequired dummy
scoreboard objectives add readyDummy dummy
scoreboard objectives add afkTime dummy
scoreboard objectives add randomCooldown dummy
scoreboard objectives add randomCooldown2 dummy
scoreboard objectives add maturity dummy
scoreboard objectives add itemPresetA dummy
scoreboard objectives add itemPresetB dummy
scoreboard objectives add gamemodePresetA dummy
scoreboard objectives add gamemodePresetB dummy
scoreboard objectives add itemchestSeedA dummy
scoreboard objectives add itemchestSeedB dummy
scoreboard objectives add targetData dummy
scoreboard objectives add specJoinTime dummy
scoreboard objectives add specJoin trigger

#item usage
scoreboard objectives add age dummy
scoreboard objectives add nResist dummy
scoreboard objectives add resistTime dummy
scoreboard objectives add resTimer dummy
scoreboard objectives add invulTime dummy
scoreboard objectives add invulTimer dummy
scoreboard objectives add useSnowball minecraft.used:minecraft.snowball
scoreboard objectives add projectileSafe dummy
scoreboard objectives add burn dummy
scoreboard objectives add electrocute dummy
scoreboard objectives add eatGoldApple minecraft.used:minecraft.golden_apple
scoreboard objectives add gAppleTime dummy
scoreboard objectives add invisibility dummy
scoreboard objectives add invisTimer dummy
scoreboard objectives add useTotem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add usePearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add clickVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add elytraState dummy
scoreboard objectives add elytraTimer dummy
scoreboard objectives add useDagger minecraft.used:minecraft.iron_sword
scoreboard objectives add anvil dummy
scoreboard objectives add enderman dummy
scoreboard objectives add enderSteal dummy
scoreboard objectives add itemStolen dummy
scoreboard objectives add giveItem dummy
scoreboard objectives add giveQty dummy
scoreboard objectives add lightningCooldown dummy
scoreboard objectives add lightningSafe dummy
scoreboard objectives add storm dummy
scoreboard objectives add pickupTimer dummy
scoreboard objectives add inventoryCheck dummy
scoreboard objectives add useEye minecraft.used:minecraft.ender_eye
scoreboard objectives add blindtime dummy
scoreboard objectives add blinddelay dummy

#randomization
scoreboard objectives add rNumber dummy

#mid-game voting
scoreboard objectives add mgVoteMode dummy
scoreboard objectives add mgVoteCount dummy
scoreboard objectives add mgVoteTrigger trigger

#valid entity, makes sure invalid entities get deleted after the scoreboard objective is reset
scoreboard objectives add validEntity dummy

#AI
scoreboard objectives add aiEntity dummy
scoreboard objectives add aiSkill dummy
scoreboard objectives add aiRubberBand dummy
scoreboard objectives add aiLifetime dummy
scoreboard objectives add aiBehavior dummy
scoreboard objectives add aiSubBehavior dummy
scoreboard objectives add aiSubBTimer dummy
scoreboard objectives add aiActMCooldown dummy
scoreboard objectives add aiActCCooldown dummy
scoreboard objectives add aiActICooldown dummy
scoreboard objectives add aiDirection dummy
scoreboard objectives add aiRotSet dummy
scoreboard objectives add aiRotOffset dummy
scoreboard objectives add aiRotOSTime dummy
scoreboard objectives add aiStuckTime dummy
scoreboard objectives add aiStuckTime2 dummy
scoreboard objectives add aiStuckSwim dummy
scoreboard objectives add aiJBTime dummy
scoreboard objectives add aiJBIntensity dummy
scoreboard objectives add aiJBDelay dummy
scoreboard objectives add aiTDistance dummy
scoreboard objectives add aiPearlTime dummy
scoreboard objectives add aiDelayNewPath dummy
scoreboard objectives add aiReverseCooldn dummy
scoreboard objectives add aiRunAwayTime dummy
scoreboard objectives add aiChaseTime dummy
scoreboard objectives add aiHitCooldown dummy
scoreboard objectives add aiSpreadBias dummy

#AI breadcrumb data
scoreboard objectives add AIBC_id dummy
scoreboard objectives add AIBC_dir1 dummy
scoreboard objectives add AIBC_dir2 dummy
scoreboard objectives add AIBC_dir3 dummy
scoreboard objectives add AIBC_dir4 dummy
scoreboard objectives add AIBC_hook dummy
scoreboard objectives add AIBC_spread dummy
scoreboard objectives add AIBC_event dummy
scoreboard objectives add AIBC_condition dummy
scoreboard objectives add AIBC_visualize dummy

#AI inventory
scoreboard objectives add aiHasProjectile dummy
scoreboard objectives add aiHasMelee dummy
scoreboard objectives add aiHasSBoost dummy
scoreboard objectives add aiHasDefense dummy
scoreboard objectives add aiHasTrap dummy
scoreboard objectives add aiHasGlobal dummy
scoreboard objectives add aiHoldingItem dummy
scoreboard objectives add aiDHoldItem dummy
scoreboard objectives add aiHasNormal dummy
scoreboard objectives add aiHasElite dummy
scoreboard objectives add aiHasItem1 dummy
scoreboard objectives add aiHasItem2 dummy
scoreboard objectives add aiHasItem3 dummy
scoreboard objectives add aiHasItem4 dummy
scoreboard objectives add aiHasItem5 dummy
scoreboard objectives add aiHasItem6 dummy
scoreboard objectives add aiHasItem7 dummy
scoreboard objectives add aiHasItem8 dummy
scoreboard objectives add aiHasItem9 dummy
scoreboard objectives add aiHasItem10 dummy
scoreboard objectives add aiHasItem11 dummy
scoreboard objectives add aiHasItem12 dummy
scoreboard objectives add aiHasItem13 dummy
scoreboard objectives add aiHasItem14 dummy
scoreboard objectives add aiHasItem15 dummy
scoreboard objectives add aiHasItem16 dummy
scoreboard objectives add aiHasItem17 dummy
scoreboard objectives add aiHasItem18 dummy
scoreboard objectives add aiHasItem19 dummy
scoreboard objectives add aiHasItem20 dummy
scoreboard objectives add aiHasItem21 dummy
scoreboard objectives add aiHasItem22 dummy
scoreboard objectives add aiHasItem23 dummy
scoreboard objectives add aiHasItem24 dummy
scoreboard objectives add aiHasItem25 dummy
scoreboard objectives add aiHasItem26 dummy
scoreboard objectives add aiHasItem27 dummy
scoreboard objectives add aiHasItem28 dummy
scoreboard objectives add aiHasItem29 dummy
scoreboard objectives add aiHasItem30 dummy
scoreboard objectives add aiHasItem31 dummy
scoreboard objectives add aiHasItem32 dummy
scoreboard objectives add aiHasItem33 dummy
scoreboard objectives add aiHasItem34 dummy
scoreboard objectives add aiHasItem35 dummy
scoreboard objectives add aiHasItem36 dummy
scoreboard objectives add aiHasItem37 dummy
scoreboard objectives add aiHasItem38 dummy
scoreboard objectives add aiHasItem39 dummy
scoreboard objectives add aiHasItem40 dummy
scoreboard objectives add aiHasDagger dummy
scoreboard objectives add aiHasFirework dummy

#time/timer stuff
scoreboard objectives add actionbarState dummy
scoreboard objectives add actionbarState2 dummy
scoreboard objectives add recordLap1 dummy
scoreboard objectives add recordLap2 dummy
scoreboard objectives add recordLap3 dummy
scoreboard objectives add recordLap4 dummy
scoreboard objectives add recordLap5 dummy
scoreboard objectives add recordLap6 dummy
scoreboard objectives add recordLap7 dummy
scoreboard objectives add recordLap8 dummy
scoreboard objectives add recordLap9 dummy
scoreboard objectives add recordLap10 dummy
scoreboard objectives add recordLap11 dummy
scoreboard objectives add recordLap12 dummy
scoreboard objectives add recordLap13 dummy
scoreboard objectives add recordLap14 dummy
scoreboard objectives add recordLap15 dummy
scoreboard objectives add recordLap16 dummy
scoreboard objectives add recordLap17 dummy
scoreboard objectives add recordLap18 dummy
scoreboard objectives add recordLap19 dummy
scoreboard objectives add recordLap20 dummy
scoreboard objectives add recordLap21 dummy
scoreboard objectives add recordLap22 dummy
scoreboard objectives add recordLap23 dummy
scoreboard objectives add recordLap24 dummy
scoreboard objectives add recordLap25 dummy
scoreboard objectives add lapShowTime dummy
scoreboard objectives add lapShowDelay dummy
scoreboard objectives add lapTimeMin dummy
scoreboard objectives add lapTimeMsec dummy
scoreboard objectives add lapTimeSec dummy
scoreboard objectives add bestSplit1 dummy
scoreboard objectives add bestSplit2 dummy
scoreboard objectives add bestSplit3 dummy
scoreboard objectives add bestSplit4 dummy
scoreboard objectives add bestSplit5 dummy
scoreboard objectives add bestSplit6 dummy
scoreboard objectives add bestSplit7 dummy
scoreboard objectives add bestSplit8 dummy
scoreboard objectives add bestSplit9 dummy
scoreboard objectives add bestSplit10 dummy
scoreboard objectives add bestSplit11 dummy
scoreboard objectives add bestSplit12 dummy
scoreboard objectives add bestSplit13 dummy
scoreboard objectives add bestSplit14 dummy
scoreboard objectives add bestSplit15 dummy
scoreboard objectives add bestSplit16 dummy
scoreboard objectives add bestSplit17 dummy
scoreboard objectives add bestSplit18 dummy
scoreboard objectives add bestSplit19 dummy
scoreboard objectives add bestSplit20 dummy
scoreboard objectives add bestSplit21 dummy
scoreboard objectives add bestSplit22 dummy
scoreboard objectives add bestSplit23 dummy
scoreboard objectives add bestSplit24 dummy
scoreboard objectives add bestSplit25 dummy
scoreboard objectives add bestTime dummy
scoreboard objectives add bestTimeMin dummy
scoreboard objectives add bestTimeSec dummy
scoreboard objectives add bestTimeMsec dummy
scoreboard objectives add currentTime dummy ["",{"text":"Raw Time","bold":true}]
scoreboard objectives add currentTimeMin dummy
scoreboard objectives add currentTimeMsec dummy
scoreboard objectives add currentTimeSec dummy
scoreboard objectives add currentSplit1 dummy
scoreboard objectives add currentSplit2 dummy
scoreboard objectives add currentSplit3 dummy
scoreboard objectives add currentSplit4 dummy
scoreboard objectives add currentSplit5 dummy
scoreboard objectives add currentSplit6 dummy
scoreboard objectives add currentSplit7 dummy
scoreboard objectives add currentSplit8 dummy
scoreboard objectives add currentSplit9 dummy
scoreboard objectives add currentSplit10 dummy
scoreboard objectives add currentSplit11 dummy
scoreboard objectives add currentSplit12 dummy
scoreboard objectives add currentSplit13 dummy
scoreboard objectives add currentSplit14 dummy
scoreboard objectives add currentSplit15 dummy
scoreboard objectives add currentSplit16 dummy
scoreboard objectives add currentSplit17 dummy
scoreboard objectives add currentSplit18 dummy
scoreboard objectives add currentSplit19 dummy
scoreboard objectives add currentSplit20 dummy
scoreboard objectives add currentSplit21 dummy
scoreboard objectives add currentSplit22 dummy
scoreboard objectives add currentSplit23 dummy
scoreboard objectives add currentSplit24 dummy
scoreboard objectives add currentSplit25 dummy
scoreboard objectives add oTimer dummy
scoreboard objectives add oTimerGlobal dummy
scoreboard objectives add oTimerTS dummy
scoreboard objectives add storedTimeMin dummy
scoreboard objectives add storedTimeMsec dummy
scoreboard objectives add storedTimeSec dummy
scoreboard objectives add splitCalc dummy
scoreboard objectives add splitTimeMin dummy
scoreboard objectives add splitTimeMsec dummy
scoreboard objectives add splitTimeSec dummy
scoreboard objectives add countTimeMin dummy
scoreboard objectives add countTimeMsec dummy
scoreboard objectives add countTimeSec dummy
scoreboard objectives add taLapMin dummy
scoreboard objectives add taLapSec dummy
scoreboard objectives add taLapMsec dummy
scoreboard objectives add taStoredLap dummy

#dlc timer for time attack
scoreboard objectives add trackBestTime dummy
scoreboard objectives add trackBestTimeB dummy
scoreboard objectives add trackBestTime2 dummy
scoreboard objectives add trackBestTime2B dummy
scoreboard objectives add bronzeTR dummy
scoreboard objectives add silverTR dummy
scoreboard objectives add goldTR dummy
scoreboard objectives add diamondTR dummy
scoreboard objectives add bestTR dummy
scoreboard objectives add medalTotal dummy
scoreboard objectives add medalBronze dummy
scoreboard objectives add medalSilver dummy
scoreboard objectives add medalGold dummy
scoreboard objectives add medalDiamond dummy
scoreboard objectives add medals dummy
scoreboard objectives add medalRace dummy
scoreboard objectives add medalBattle dummy
scoreboard objectives add medalWon dummy

#TV display things for extra tracks
scoreboard objectives add wmDlcMode dummy
scoreboard objectives add wmDlcNum dummy
scoreboard objectives add wmCustomMode dummy
scoreboard objectives add wmCustomNum dummy
scoreboard objectives add tvPoolMode dummy
scoreboard objectives add tvPoolNum dummy

#custom track medal time storage
scoreboard objectives add customMedalB1 dummy
scoreboard objectives add customMedalB2 dummy
scoreboard objectives add customMedalB3 dummy
scoreboard objectives add customMedalB4 dummy
scoreboard objectives add customMedalS1 dummy
scoreboard objectives add customMedalS2 dummy
scoreboard objectives add customMedalS3 dummy
scoreboard objectives add customMedalS4 dummy
scoreboard objectives add customMedalG1 dummy
scoreboard objectives add customMedalG2 dummy
scoreboard objectives add customMedalG3 dummy
scoreboard objectives add customMedalG4 dummy
scoreboard objectives add customMedalD1 dummy
scoreboard objectives add customMedalD2 dummy
scoreboard objectives add customMedalD3 dummy
scoreboard objectives add customMedalD4 dummy

#coordinate info
scoreboard objectives add coord_x dummy
scoreboard objectives add coord_y dummy
scoreboard objectives add coord_z dummy
scoreboard objectives add coord_x2 dummy
scoreboard objectives add coord_y2 dummy
scoreboard objectives add coord_z2 dummy
scoreboard objectives add coord_dx dummy
scoreboard objectives add coord_dy dummy
scoreboard objectives add coord_dz dummy
scoreboard objectives add mvmt_coord_x dummy
scoreboard objectives add mvmt_coord_y dummy
scoreboard objectives add mvmt_coord_z dummy
scoreboard objectives add mvmt_coord_dx dummy
scoreboard objectives add mvmt_coord_dy dummy
scoreboard objectives add mvmt_coord_dz dummy
scoreboard objectives add rot_yaw dummy
scoreboard objectives add rot_pitch dummy
scoreboard objectives add remember_x dummy
scoreboard objectives add remember_z dummy

#nav stuff
scoreboard objectives add faceDirection dummy
scoreboard objectives add recDirection dummy
scoreboard objectives add navDirection dummy
scoreboard objectives add navDirection2 dummy
scoreboard objectives add navCompare dummy
scoreboard objectives add boundaryTimer dummy
scoreboard objectives add offCourseBuffer dummy
scoreboard objectives add wrongWayBuffer dummy

#dropped spawn eggs and misc (editor mode)
scoreboard objectives add dropCowEgg minecraft.dropped:minecraft.cow_spawn_egg
scoreboard objectives add dropDrownedEgg minecraft.dropped:minecraft.drowned_spawn_egg
scoreboard objectives add dropSheepEgg minecraft.dropped:minecraft.sheep_spawn_egg
scoreboard objectives add dropVillagerEgg minecraft.dropped:minecraft.villager_spawn_egg
scoreboard objectives add dropWitchEgg minecraft.dropped:minecraft.witch_spawn_egg
scoreboard objectives add dropBlazeEgg minecraft.dropped:minecraft.blaze_spawn_egg
scoreboard objectives add dropSpiderEgg minecraft.dropped:minecraft.spider_spawn_egg
scoreboard objectives add dropBatEgg minecraft.dropped:minecraft.bat_spawn_egg
scoreboard objectives add dropEndermanEgg minecraft.dropped:minecraft.enderman_spawn_egg
scoreboard objectives add dropEndermiteEgg minecraft.dropped:minecraft.endermite_spawn_egg
scoreboard objectives add dropPigEgg minecraft.dropped:minecraft.pig_spawn_egg
scoreboard objectives add dropBarrier minecraft.dropped:minecraft.barrier
scoreboard objectives add dropDispenser minecraft.dropped:minecraft.dispenser
scoreboard objectives add dropRedDye minecraft.dropped:minecraft.red_dye
scoreboard objectives add dropOrangeDye minecraft.dropped:minecraft.orange_dye
scoreboard objectives add dropWhiteDye minecraft.dropped:minecraft.white_dye
scoreboard objectives add dropGrayWool minecraft.dropped:minecraft.gray_wool
scoreboard objectives add dropLimeWool minecraft.dropped:minecraft.lime_wool

#important game function
scoreboard objectives add hp health ["",{"text":"❤","color":"red"}]
scoreboard objectives add lap dummy
scoreboard objectives add lapFake dummy
scoreboard objectives add check dummy ["",{"text":"Checkpoint","bold":true}]
scoreboard objectives add nCheck dummy
scoreboard objectives add storedLap dummy
scoreboard objectives add storedCheck dummy
scoreboard objectives add jump dummy
scoreboard objectives add speedBoost dummy
scoreboard objectives add resetCooldown dummy
scoreboard objectives add timeSinceCheck dummy
scoreboard objectives add lapCalc dummy
scoreboard objectives add checkCalc dummy
scoreboard objectives add racePosCalc dummy
scoreboard objectives add racePos dummy
scoreboard objectives add racePosDisplay dummy ["",{"text":"Position","bold":true}]
scoreboard objectives add racePosDisplay2 dummy ["",{"text":"Position","bold":true}]
scoreboard objectives add battlePos dummy
scoreboard objectives add battPosDisplay dummy ["",{"text":"KO Ranking","bold":true}]
scoreboard objectives add battPosDisplay2 dummy ["",{"text":"KO Ranking","bold":true}]
scoreboard objectives add itemPosition dummy
scoreboard objectives add lapAnimation dummy
scoreboard objectives add subtitleDelay dummy
scoreboard objectives add points dummy
scoreboard objectives add teamPoints dummy
scoreboard objectives add teamPointsShow dummy
scoreboard objectives add dummyPoints dummy
scoreboard objectives add addPoints dummy
scoreboard objectives add addPoints2 dummy
scoreboard objectives add timeOut dummy
scoreboard objectives add playerID dummy
scoreboard objectives add dummyID dummy
scoreboard objectives add attackerID dummy
scoreboard objectives add attackTime dummy
scoreboard objectives add KOs dummy
scoreboard objectives add dummyKOs dummy
scoreboard objectives add hitPlayer minecraft.custom:minecraft.damage_dealt
scoreboard objectives add killPlayer minecraft.killed:minecraft.player
scoreboard objectives add killedByPlayer minecraft.killed_by:minecraft.player
scoreboard objectives add killedByZombie minecraft.killed_by:minecraft.zombie
scoreboard objectives add mapZone dummy
scoreboard objectives add scriptMove dummy
scoreboard objectives add scriptMoveLimit dummy
scoreboard objectives add teleport dummy
scoreboard objectives add lastTeleport dummy
scoreboard objectives add specShowHP dummy
scoreboard objectives add leadDisplayDelay dummy
scoreboard objectives add realmsMode dummy
scoreboard objectives add adminMode dummy
scoreboard objectives add difficultyRamp dummy
scoreboard objectives add dropSVoid minecraft.dropped:minecraft.structure_void
scoreboard objectives add timeUntilElim dummy
scoreboard objectives add playerLives dummy

#lap display during races
bossbar add lap1 ["",{"text":"Lap [1/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap2 ["",{"text":"Lap [2/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap3 ["",{"text":"Lap [3/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap4 ["",{"text":"Lap [4/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap5 ["",{"text":"Lap [5/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap6 ["",{"text":"Lap [6/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap7 ["",{"text":"Lap [7/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap8 ["",{"text":"Lap [8/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap9 ["",{"text":"Lap [9/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add lap10 ["",{"text":"Lap [10/","color":"green","bold":true},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]","objective":"lap"},"color":"green","bold":true},{"text":"]","color":"green","bold":true}]
bossbar add timeremaining ["",{"text":"Time"}]
bossbar set lap1 style progress
bossbar set lap2 style progress
bossbar set lap3 style progress
bossbar set lap4 style progress
bossbar set lap5 style progress
bossbar set lap6 style progress
bossbar set lap7 style progress
bossbar set lap8 style progress
bossbar set lap9 style progress
bossbar set lap10 style progress
bossbar set minecraft:timeremaining style progress

#movement
scoreboard objectives add moveSpeed dummy
scoreboard objectives add timeWalked dummy
scoreboard objectives add moveState dummy
scoreboard objectives add moveCheck dummy
scoreboard objectives add moving dummy
scoreboard objectives add rateAccel dummy
scoreboard objectives add rateDecel dummy
scoreboard objectives add speedlevel dummy
scoreboard objectives add speedlevel2 dummy
scoreboard objectives add dspeedlevel dummy
scoreboard objectives add hitstun dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add checkWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add checkSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add checkSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add regenTimer dummy
scoreboard objectives add blinkTimer dummy

#lobby stuff
scoreboard objectives add gameTime dummy
scoreboard objectives add voteTime dummy
scoreboard objectives add voteCount dummy
scoreboard objectives add defLobbyTime dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] defLobbyTime 30
scoreboard objectives add defVoteTime dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] defVoteTime 25
scoreboard objectives add roundNumber dummy
scoreboard objectives add roundNumber2 dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyState 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetA 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetB 1
scoreboard objectives add pressJump minecraft.custom:minecraft.jump
scoreboard objectives add lastGamemode dummy
scoreboard objectives add creditsCycle dummy
scoreboard objectives add villagerTalk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add villagerTip dummy
scoreboard objectives add trackSequenceR dummy
scoreboard objectives add trackSequenceB dummy
scoreboard objectives add itemRainTimer dummy

#level specific
scoreboard objectives add tutorProgress dummy
scoreboard objectives add airTime dummy
scoreboard objectives add GTplatTimer dummy
scoreboard objectives add carCooldown dummy

scoreboard players add @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] medalRace 0
scoreboard players add @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] medalBattle 0
scoreboard players add @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] trackBestTime 0

#quickly redo quick select data...
function sprint_racer:worldmap/reset_quick_select_data

#clear unused scoreboards left over from MKMC
function sprint_racer:game_logic/2/node_update/clear_unused_scoreboards

#tell sprint racer it's ok to clear the scoreboard cache now
#(note: you can set this to -1 to prevent this from happening)
execute unless score #clearCacheAllowed value matches ..-1 run scoreboard players set #clearCacheAllowed value 1

#it worked
scoreboard players set @a join 1
tellraw @a ["",{"text":"World setup successful!","color":"aqua"}]
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run tellraw @a ["",{"text":"Critical entity \"w\" is not present.","color":"red"}]
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ 100000 ~ 100000 2 1