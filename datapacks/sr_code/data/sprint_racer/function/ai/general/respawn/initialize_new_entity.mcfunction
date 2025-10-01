scoreboard players set @s attackerID 0
scoreboard players set @s attackTime 0

#not needed anymore
#execute if score #halftick value matches 1 run tag @s add fast_cooldown

scoreboard players set @s moveSpeed 0
scoreboard players set @s rateAccel 10
scoreboard players set @s rateDecel 300
scoreboard players set @s moveCheck 0
scoreboard players set @s hitstun 0
scoreboard players set @s moving 0
scoreboard players set @s speedlevel 0
scoreboard players set @s aiLifetime 0
scoreboard players set @s damageMultiply 10
scoreboard players set @s boundaryTimer 10

scoreboard players set @s speedBoost 0
scoreboard players set @s speedBState 0
scoreboard players set @s dSpeedBState 0
scoreboard players set @s lightningSafe 0
scoreboard players set @s projectileSafe 0
scoreboard players set @s elytraTimer 0
scoreboard players set @s scriptMove 0

scoreboard players set @s resistTime 0
scoreboard players set @s nResist 0
scoreboard players set @s invisibility 0
scoreboard players set @s invulTime 0

scoreboard players set @s inputCooldown 0
scoreboard players set @s itemCooldown 20
scoreboard players set @s itemLuck 3

scoreboard players set @s AIBC_id 0
scoreboard players set @s AIBC_dir1 0
scoreboard players set @s AIBC_dir2 0
scoreboard players set @s AIBC_dir3 0
scoreboard players set @s AIBC_dir4 0
scoreboard players set @s AIBC_hook 0
scoreboard players set @s AIBC_spread 0
scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_condition 0

scoreboard players set @s aiBehavior 1
scoreboard players set @s aiSubBehavior 0
scoreboard players set @s aiSubBTimer 0
scoreboard players set @s aiActMCooldown 0
scoreboard players set @s aiActCCooldown 0
scoreboard players set @s aiActICooldown 0
scoreboard players set @s aiDirection 0
scoreboard players set @s aiRotSet 0
scoreboard players set @s aiRotOffset 0
scoreboard players set @s aiRotOSTime 0
scoreboard players set @s aiRubberBand 0
scoreboard players set @s aiStuckTime 1
scoreboard players set @s aiStuckTime2 1
scoreboard players set @s aiStuckSwim 0
scoreboard players set @s aiReverseCooldn 0
scoreboard players set @s aiHitCooldown 50
scoreboard players set @s aiChaseTime 0
scoreboard players set @s aiRunAwayTime 0
scoreboard players set @s AIBC_engagemt 300

scoreboard players set @s aiHasProjectile 0
scoreboard players set @s aiHasMelee 0
scoreboard players set @s aiHasDefense 0
scoreboard players set @s aiHasSBoost 0
scoreboard players set @s aiHasTrap 0
scoreboard players set @s aiHasGlobal 0
scoreboard players set @s aiHoldingItem 0
scoreboard players set @s aiHasNormal 0
scoreboard players set @s aiHasElite 0
scoreboard players set @s aiHasItem1 0
scoreboard players set @s aiHasItem2 0
scoreboard players set @s aiHasItem3 0
scoreboard players set @s aiHasItem4 0
scoreboard players set @s aiHasItem5 0
scoreboard players set @s aiHasItem6 0
scoreboard players set @s aiHasItem7 0
scoreboard players set @s aiHasItem8 0
scoreboard players set @s aiHasItem9 0
scoreboard players set @s aiHasItem10 0
scoreboard players set @s aiHasItem11 0
scoreboard players set @s aiHasItem12 0
scoreboard players set @s aiHasItem13 0
scoreboard players set @s aiHasItem14 0
scoreboard players set @s aiHasItem15 0
scoreboard players set @s aiHasItem16 0
scoreboard players set @s aiHasItem17 0
scoreboard players set @s aiHasItem18 0
scoreboard players set @s aiHasItem19 0
scoreboard players set @s aiHasItem20 0
scoreboard players set @s aiHasItem21 0
scoreboard players set @s aiHasItem22 0
scoreboard players set @s aiHasItem23 0
scoreboard players set @s aiHasItem24 0
scoreboard players set @s aiHasItem25 0
scoreboard players set @s aiHasItem26 0
scoreboard players set @s aiHasItem27 0
scoreboard players set @s aiHasItem28 0
scoreboard players set @s aiHasItem29 0
scoreboard players set @s aiHasItem30 0
scoreboard players set @s aiHasItem31 0
scoreboard players set @s aiHasItem32 0
scoreboard players set @s aiHasItem33 0
scoreboard players set @s aiHasItem34 0
scoreboard players set @s aiHasItem35 0
scoreboard players set @s aiHasItem36 0
scoreboard players set @s aiHasItem37 0
scoreboard players set @s aiHasItem38 0
scoreboard players set @s aiHasItem39 0
scoreboard players set @s aiHasItem40 0
scoreboard players set @s aiHasDagger 0
scoreboard players set @s aiHasFirework 0
scoreboard players set @s aiHasObliterator 0

scoreboard players operation @s playerLives = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] playerLives
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3,gamemodePresetB=2}] if score @s playerLives matches ..2 run tag @s add ai_fearful

scoreboard players operation @s tacticsSequence = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiTacticsA
scoreboard players operation @s tacticsStep = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiTacticsB

#skill 0 is very easy ai
tag @s[scores={aiSkill=0}] add very_easy_ai
scoreboard players set @s[scores={aiSkill=0}] aiSkill 1

#assing ai as the "rival" if parent is rival (aiLevel > 8)
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noAIrival,limit=1]
execute if score #test value matches ..0 if score global aiLevel matches 5.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=0..2}] if entity @e[limit=1,tag=currentMaster,tag=rivalAImaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] run tag @s add ai_rival
execute if score #test value matches ..0 if score global aiLevel matches 8.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=0..1}] if entity @e[limit=1,tag=currentMaster,tag=rivalAImaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] run scoreboard players add @s[tag=!very_easy_ai,scores={aiSkill=..2}] aiSkill 1
execute if score #test value matches ..0 if score global aiLevel matches 11.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=0..2}] if entity @e[limit=1,tag=currentMaster,tag=rivalAImaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] run tag @s[scores={aiSkill=3}] add tryhard

#cheat code overrides difficulty at the last possible second...
execute if entity @e[limit=1,type=armor_stand,tag=54a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:ai/general/respawn/_custom_ai_difficulty

#attribute for explosion resistance
function sprint_racer:explosion_knockback_resistance

#attributes related to cheat codes
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=cheatdetected] run function sprint_racer:cheats/update_player_attributes_ai

#team
team join player @s
execute on passengers run team join player @s

#assign to team
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange] run tag @s add playerOrange
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange] run team join playerOrange @s
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange] on passengers run team join playerOrange @s
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan] run tag @s add playerCyan
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan] run team join playerCyan @s
execute if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan] on passengers run team join playerCyan @s

effect give @s resistance 1 200 true

#waypoint stuff for battle mode
attribute @s waypoint_transmit_range base set 60000000
waypoint modify @s style set minecraft:battle_player
#waypoint modify @s color red
#waypoint modify @s[tag=playerOrange] color gold
#waypoint modify @s[tag=playerCyan] color dark_aqua

#bots go hard with TRYHARD cheat enabled!
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=42a] run tag @s add rb_ahead
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=42a] run scoreboard players set @s aiSkill 3

#held item in battle mode
execute if score global gameState matches 3 unless score #battleBatBanned value matches 1.. run item replace entity @s weapon.mainhand with wooden_sword[item_model="sr/item/battle_bat"]