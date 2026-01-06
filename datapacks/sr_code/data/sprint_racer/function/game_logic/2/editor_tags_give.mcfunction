tag @s remove checkAnyY
tag @s add checkSound
tag @s add checkText
tag @s add checkWarn
tag @s add checkWrongWay
tag @s remove finAnyY
tag @s add finWarn
tag @s add finWrongWay
tag @s remove itemBattle
execute if score global gameState matches 3 run tag @s add itemBattle
execute if score global gameState matches 8 run tag @s add itemBattle
execute if score global gameState matches 10 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=2}] run tag @s add itemBattle
tag @s remove superSpeed
tag @s remove elytraShort
tag @s add elytraMed
tag @s remove elytraHigh
tag @s remove resLong
tag @s remove psBattle
execute if score global gameState matches 3 run tag @s add psBattle
execute if score global gameState matches 8 run tag @s add psBattle
tag @s remove psTeamOrange
tag @s remove psTeamCyan
execute if score global gameState matches 10 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=2}] run tag @s add psBattle
tag @s remove teledest
tag @s add teleparticle
tag @s add telesound
tag @s remove scriptStart
tag @s remove scriptEnd
tag @s remove boostRequired
tag @s remove thisPosCalc
tag @s remove thisFPosCalc
tag @s remove aiCantSee
tag @s remove requireGround
tag @s remove psTimeAttack
tag @s remove targetImpossible
tag @s add auto_elytra
tag @s remove elytraPath
tag @s remove setVisualLine
scoreboard players set @s jump 5
scoreboard players set @s check 1
scoreboard players set @s nCheck 1
scoreboard players set @s teleport 1
scoreboard players set @s scriptMove 4
scoreboard players set @s itemchestSeedA 0
scoreboard players set @s itemchestSeedB 0
scoreboard players set @s itemchestSeedR 0
scoreboard players set @s itemchestSeedG 0

scoreboard players set @s AIBC_id 1
scoreboard players set @s AIBC_dir1 0
scoreboard players set @s AIBC_dir2 0
scoreboard players set @s AIBC_dir3 0
scoreboard players set @s AIBC_dir4 0
scoreboard players set @s AIBC_hook 1
scoreboard players set @s AIBC_spread 0
scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_condition 0
scoreboard players set @s settingPath 1

scoreboard players set @s check_y_min -1
scoreboard players set @s check_y_max 10
scoreboard players set @s fin_y_min -1
scoreboard players set @s fin_y_max 10

scoreboard players reset @s snowball
scoreboard players reset @s enderPearl
scoreboard players reset @s dropBarrier
scoreboard players reset @s dropDispenser
scoreboard players reset @s dropCowEgg
scoreboard players reset @s dropDrownedEgg
scoreboard players reset @s dropSheepEgg
scoreboard players reset @s dropVillagerEgg
scoreboard players reset @s dropWitchEgg
scoreboard players reset @s dropBlazeEgg
scoreboard players reset @s dropSpiderEgg
scoreboard players reset @s dropBatEgg
scoreboard players reset @s dropEndermanEgg
scoreboard players reset @s dropEndermiteEgg
scoreboard players reset @s dropPigEgg
scoreboard players reset @s dropRedDye
scoreboard players reset @s dropOrangeDye
scoreboard players reset @s dropWhiteDye
scoreboard players reset @s dropStick
scoreboard players reset @s dropChickEgg

clear @s minecraft:experience_bottle