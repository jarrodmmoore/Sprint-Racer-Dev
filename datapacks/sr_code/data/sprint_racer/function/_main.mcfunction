#"main" game loop


######################################################
#I had no idea what I was doing when I first wrote Sprint Racer's datapack.
#Parts of the code are ugly, not very efficient, and have inconsistent coding style.

#So while you're here, I should clear some things up:


#GLOBAL VARIABLES:
#Most of the time (in older code), global variables are stored on entity "w" which sits at world spawn.
# Storing global variables on an entity is... usually not the best idea.
#  It's expensive. And it fails if worldspawn is moved or the game tries to run the datapack before entities are loaded (this can happen post-1.17... not a great look.)
#Sometimes large swaths of the code are run BY "w" (like most of the code in game_logic). In those cases, I used @s to check global variables. This is better than @e, although it's a little more confusing for someone reading the code.

#Later on, I started using a single fake player for storing some global variables. Used a player named "global" and various objectives.

#Even LATER on, I started using many unique fake players for storing global variables with one generic objective. Ex: "#halftick value". (#halftick = player, value = generic objective)
#^ TIP: If you're an up-and-coming datapack programmer, you should almost always use this third method.



#20HZ AND 10HZ MODE ("halftick" mode):
#When v1.0 was nearing completion, I realized that Sprint Racer was performing poorly... especially with lots of AIs.
#Instead of improving the code to be more TPS efficient, I decided to add a silly "performance" mode where the datapack runs at 10Hz instead of the usual 20Hz.
# Parts of the code were designed to deal with 10Hz and 20Hz mode in different ways.
#  Ex: a timer might count up by 1 on every run of 20Hz mode, but count up by 2 on every run of 10Hz mode.

#This system is *REALLY DUMB* and has historically caused many bugs.
#Later on I ended up taking bits of code out of this terrible system and forcing them to always run at 20Hz. (see function sprint_racer:all_20hz_stuff)

#This system *is* still in use, though. So be warned.

#The default settings for Sprint Racer ([AUTO] performance) cause 10Hz mode to activate when any of the 3 conditions are met:
#- Players are in the lobby (because the lobby is very laggy)
#- AIs are active
#- There are more than 5 players actively playing



#SPRINT_RACER_LANGUAGE AND TRANSLATION:
#For the longest time I was unaware that the lang files in a resource pack could be used for translation with the help of the "translate" json component.
#So to make things "easier" for people translating Sprint Racer, I isolated all functions that involve text shown to the player into a separate datapack.
#I've since changed all this isolated text to use the "translate" component so it can be translated via resource pack. The separate datapack is still there, but its segregation from everything else is pointless now.

######################################################



#halftick?
scoreboard players set #halftick value 0
execute if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] run scoreboard players set #halftick value 1

#admin mode?
scoreboard players set #adminmode value 0
execute if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=requireAdmin] run scoreboard players set #adminmode value 1

#validate nodes?
execute unless score #skipNodeValidation value matches 1 run function sprint_racer:game_logic/2/node_update/_tick_restore

#immediately run this on players who join the world
scoreboard players add #join_tick value 1
scoreboard players add @a join 1
execute as @a unless score @s join = #join_tick value run function sprint_racer:join
execute as @a[scores={hpSet=..999}] run function sprint_racer:hp_scoreboard_fix

#death logic for immediate respawns
execute as @a[scores={death=0..}] at @s run function sprint_racer:death_logic/_death_logic_main

#AFK check, if a player does not move for too long they become a spectator
scoreboard players add @a[tag=playing,gamemode=adventure,scores={moveState=..0},nbt={OnGround:1b}] afkTime 1
execute if score #halftick value matches 1 run scoreboard players add @a[tag=playing,gamemode=adventure,scores={moveState=..0},nbt={OnGround:1b}] afkTime 1
scoreboard players set @a[tag=playing,scores={moveState=1..}] afkTime 0
scoreboard players set @a[tag=playing,scores={carrotInput=..9}] afkTime 0
execute as @a[tag=playing,tag=!afk,scores={afkTime=601..}] run function sprint_racer:go_afk

#this lets us lump players and AI together for some shared functionalities...
tag @e[tag=activeplayer] remove activeplayer
tag @a[tag=playing,gamemode=adventure,scores={hp=1..}] add activeplayer
tag @e[tag=ai,type=!marker,type=!armor_stand] add activeplayer

#delayed particle thing
execute as @e[tag=delayTP] at @s run function sprint_racer:delayed_tp_particle

#inventory check cycle
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=requireAdmin] run function sprint_racer:inventory_check/global_no_admins
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=requireAdmin] run function sprint_racer:inventory_check/global_admins

#mid-game voting
function sprint_racer:mid_game_vote/mgv_main

#oTimerGlobal, helps run commands at half frequency when I want to
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] oTimerGlobal 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={oTimerGlobal=2..}] oTimerGlobal 0

#attackedID stuff for giving KO points, resets after a while
execute as @a[scores={hitPlayer=1..}] at @s run function sprint_racer:hit_another_player
execute as @e[tag=activeplayer] run function sprint_racer:handle_attacker_id
#DEBUG -- execute as @a run tellraw @s ["",{text:"attackerID = "},{score:{name:"@s",objective:"attackerID"}}]

#make sure speedometer get placed in the right slot if its active
execute as @a[tag=spdbump] run function sprint_racer:speedometer/speedo_bump

#carrot on a stick
execute as @a at @s run function sprint_racer:carrot_on_stick

#speed button
execute as @a at @s run function sprint_racer:head_button

######################################################
#DEVELOPER STUFF
#remove comment marks to re-activate

#light update gun
#execute as @e[tag=lightgun] at @s run function sprint_racer:temp_light_gun_operate
#execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand prismarine_shard at @s run function sprint_racer:temp_light_update_gun
#execute as @e[tag=updateblock,scores={lifespan=19}] at @s run setblock ~ ~ ~ prismarine
#execute as @e[tag=updateblock,scores={lifespan=3}] at @s run setblock ~ ~ ~ air

#auto convert area effect clouds to Marker (1.17)
#execute as @e[tag=node,type=area_effect_cloud] at @s run function sprint_racer:game_logic/2/convert_aec_to_marker/_index

#display something forever always
#scoreboard objectives setdisplay sidebar aiBehavior
#title @a actionbar ["",{text:"moveState is "},{score:{name:"@e[tag=ai,limit=1,sort=nearest]",objective:"moveState"}}]

#assign random resource control seeds to battle chests
#(I would recommend running this function manually instead of un-commenting this)
#function sprint_racer:items/rc_seed_random_assign
######################################################


#invisibility cramming
execute if score global allowInvis matches 1 if score global gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=161..}] run function sprint_racer:game_logic/1/invisible_nearby/main
execute if score global allowInvis matches 2 if score global gameState matches 1 if score global playerCountM matches 5.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=161..}] run function sprint_racer:game_logic/1/invisible_nearby/main

#in case multiple players are in edit mode at the same time...
#only ONE of them will carry out important node summoning commands
tag @a[limit=1,sort=random,scores={playerState=2}] add executor

#players in creative mode get admin controls
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] as @a[gamemode=creative,tag=!restricted] at @s run function sprint_racer:admin

#get coordinates
execute as @a at @s run function sprint_racer:coordinates

#items
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=1..3}] unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=14a] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:items/item_tick/_main
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=1..3}] unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=14a] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:items/item_tick/_main_teams
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=14a] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:items/item_tick/_main


#20Hz stuff
#placed in the middle of main so it executes at a more regular interval when 10Hz mode is on
function sprint_racer:all_20hz_stuff


#movement speed and damage logic
execute as @a[gamemode=!spectator] at @s run function sprint_racer:movespeed
execute as @e[scores={damage=1..}] at @s run function sprint_racer:damage_logic/damage_slowdown
execute as @a[gamemode=!spectator,gamemode=!creative,nbt={OnGround:1b},scores={moveState=3}] at @s run function sprint_racer:sneak_regen
execute if score #halftick value matches 1 as @a[gamemode=!spectator,gamemode=!creative,nbt={OnGround:1b},scores={moveState=3}] at @s run function sprint_racer:sneak_regen
scoreboard players set @a[scores={regenTimer=1..,moveState=..2}] regenTimer 0
execute if score global gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=180..}] run bossbar set minecraft:control_holdtosprint players @a[tag=!bbarbump,tag=playing,gamemode=!spectator,scores={timeWalked=50..}]
bossbar set minecraft:control_sneakheal players @a[tag=playing,tag=!bbarbump,gamemode=!spectator,scores={heal_aware=50..}]

#count active players, show speedometer if no other players are present
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
execute as @a[tag=playing,gamemode=!spectator] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountB 1


#show speedometer if only one racer is present
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=speedo,tag=!nospeedo] as @a[limit=1,tag=playing] at @s run function sprint_racer:speedometer/speedo_main

#xp-bar speedometer
function sprint_racer:speedometer/xp_bar_main


#potion effects
function sprint_racer:effects/passive


###############################################
#GAME LOGIC (very important function call)
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] run function sprint_racer:game_logic/_index
###############################################


#EDITOR MODE
execute as @a[scores={playerState=2}] at @s run function sprint_racer:game_logic/2/gl2_main

#global cheats
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=cheatdetected] run function sprint_racer:cheats/_cheats_main
execute as @a[limit=2,gamemode=!spectator,sort=random] at @s positioned ~ ~-1.4 ~ positioned ^ ^ ^1 if entity @e[tag=cheategg,type=armor_stand,tag=!eggshow,distance=..2] run function sprint_racer:cheats/eggs/player_show
execute as @e[tag=eggshow,type=armor_stand] at @s run function sprint_racer:cheats/eggs/egg_hide

#teleports
execute as @e[type=marker,scores={nodeState=1..},tag=node,tag=teleporter,tag=!teledest,tag=teleparticle] at @s run particle portal ~ ~1 ~ 0 0.2 0 .5 50
execute as @e[type=marker,scores={nodeState=1..},tag=node,tag=teleporter,tag=!teledest] at @s as @e[tag=activeplayer,distance=..2] run function sprint_racer:teleporter

#spectator mid-game join functionality
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={specJoinTime=1..}] run function sprint_racer:join_logic/mid_game_spec/_mgs_main
execute as @a[scores={specJoin=1}] run function sprint_racer:join_logic/mid_game_spec/join_attempt

#scoreboard cleanup
tag @e[tag=foundplayer] remove foundplayer
tag @a[tag=selecting] remove selecting
tag @a[tag=executor] remove executor
tag @a[tag=finWarn,scores={playerState=..1}] remove finWarn
tag @a[tag=finWrongWay,scores={playerState=..1}] remove finWrongWay
tag @a[tag=checkWarn,scores={playerState=..1}] remove checkWarn
tag @a[tag=checkWrongWay,scores={playerState=..1}] remove checkWrongWay
scoreboard players set @a[gamemode=adventure,scores={playerState=2}] playerState 1
scoreboard players reset @a[scores={carrotInput=..999}] carrotInput

#all items with a lifespan score run this function and count down to death
execute as @e[scores={lifespan=..99999}] run function sprint_racer:entity_lifespan

#death logic (give KO points)
execute as @a[scores={death2=..999}] run function sprint_racer:ko_logic/_main
execute as @a[scores={playerKO=0..}] run function sprint_racer:ko_logic/direct_ko_insurance

#input cooldown
scoreboard players remove @e[scores={inputCooldown=1..}] inputCooldown 1
execute if score #halftick value matches 1 run scoreboard players remove @e[scores={inputCooldown=1..}] inputCooldown 1

#kill all unwanted item drops
execute as @e[type=item] run function sprint_racer:validate_dropped_item
kill @e[type=experience_orb,tag=!stay]

#need to make sure "w" exists.
execute if score #autoFix value matches 1 run function sprint_racer:verify_w_exists