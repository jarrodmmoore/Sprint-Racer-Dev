#called from _ai_master, run by @e[limit=1,tag=myCHILD]

#check if in water
execute if block ~ ~ ~ water run tag @s add inWater
execute if block ~ ~ ~ light[waterlogged=true] run tag @s add inWater

#item cooldown
scoreboard players remove @s[scores={itemCooldown=1..}] itemCooldown 2
#scoreboard players remove @s[tag=fast_cooldown,scores={itemCooldown=1..}] itemCooldown 2


#randomize movement bias every now and then
#this causes the AI to usually prefer one side of the lane and not clump in with other zombies in an unnatural looking way
scoreboard players remove @s aiBiasTime 1
execute if entity @s[scores={aiBiasTime=..0}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/get_random_spread_bias

#increment lifetime score for ai entity
scoreboard players add @s aiLifetime 1

#turn "invisible" if player nearby
execute if score global allowInvis matches 1 if score global gameState matches 1 run function sprint_racer:ai/race/invis_cram
execute if score global allowInvis matches 2 if score global gameState matches 1 if score global playerCountM matches 5.. run function sprint_racer:ai/race/invis_cram



#special ai functions
execute if entity @s[tag=special_ai] run function sprint_racer:ai/general/special/_start

#ai invulnerability
execute if entity @s[nbt={Invulnerable:0b},scores={nResist=1..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={Invulnerable:0b},scores={invulTime=1..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={Invulnerable:1b},scores={invulTime=..0,nResist=..0}] run data merge entity @s {Invulnerable:0b}

#AI picks up items on the ground
execute if entity @e[type=item,tag=!capsuleItem,tag=!pickedUP,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}] run function sprint_racer:ai/general/item_logic/pick_up/pick_up_main

#ai movement calculations (done by ai entity)
function sprint_racer:coordinates
function sprint_racer:ai/general/movespeed


#ai can't move while airborne after damage was taken
execute if entity @s[tag=aiGotOwie] run function sprint_racer:ai/general/owch_logic
scoreboard players set @s[tag=!aiGotOwie,scores={aiOwchTime=1..}] aiOwchTime 0


#ai loses aiAirBoost tag when on ground
tag @s[tag=slowAir] remove slowAir
tag @s[tag=aiAirBoost,nbt={OnGround:1b}] remove aiAirBoost
tag @s[nbt={OnGround:0b},tag=!aiAirBoost,scores={speedBoost=..0}] add slowAir

#ai calculates its current health and how much damage it may have taken
#NOTE: ai has an extra 1000HP so we can make it do a few things instead of just vanishing instantly at 0HP
function sprint_racer:ai/general/health_calculation
execute if entity @s[scores={damage=1..}] at @s run function sprint_racer:damage_logic/damage_slowdown_ai

#forced redirection
execute if entity @e[tag=node,tag=AIBC,scores={AIBC_event=7},distance=..10] run function sprint_racer:ai/general/aibc_redirection
execute if entity @s[scores={aiDelayNewPath=0..}] run function sprint_racer:ai/general/delay_new_path

#force reset node
execute unless score global gameState matches 3 at @s if entity @e[type=marker,tag=node,tag=AIBC,scores={AIBC_event=8},distance=..10] run function sprint_racer:ai/general/aibc_reset


###BEHAVIOR STUFF
#ai behavior logic, changes depending on situation
execute unless score global gameState matches 3 run function sprint_racer:ai/race/_main_behavior_logic
execute if score global gameState matches 3 run function sprint_racer:ai/battle/_main_behavior_logic

#sub-behavior timer, resets sub behavior to 0 when it expires
scoreboard players remove @s[scores={aiSubBTimer=1..}] aiSubBTimer 1
scoreboard players set @s[scores={aiSubBTimer=1}] aiSubBehavior 0

#ai behavior
execute if entity @s[scores={aiBehavior=1,aiSubBehavior=..0}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/_follow_breadcrumb_main
execute if entity @s[scores={aiBehavior=2,aiSubBehavior=..0}] run function sprint_racer:ai/general/behaviors/roam/_roam_main
execute if entity @s[scores={aiBehavior=3,aiSubBehavior=..0}] run function sprint_racer:ai/general/behaviors/chase_player/_chase_player_main
execute if entity @s[scores={aiBehavior=4,aiSubBehavior=..0}] run function sprint_racer:ai/general/behaviors/evade_player/_evade_player_main
#...
execute if entity @s[scores={aiSubBehavior=1}] run function sprint_racer:ai/general/behaviors/move_toward_itemchest/_mti_main
execute if entity @s[scores={aiSubBehavior=5}] run function sprint_racer:ai/general/behaviors/elytra_flight/elytra_main
#...
###

#who we moving at?
function sprint_racer:ai/general/confirm_move_target/_index


#get ready for some very ugly code!

#cooldown for certain AI decisions
scoreboard players remove @s[scores={aiActCCooldown=1..}] aiActCCooldown 2
scoreboard players remove @s[scores={aiReverseCooldn=1..}] aiReverseCooldn 2
scoreboard players remove @s[scores={aiActMCooldown=1..}] aiActMCooldown 1
scoreboard players remove @s[scores={aiActICooldown=8..}] aiActICooldown 2
scoreboard players remove @s[scores={inputCooldown=..0,aiActICooldown=1..7}] aiActICooldown 1
execute if entity @s[scores={aiActICooldown=5,aiHoldingItem=1..}] run function sprint_racer:ai/general/item_logic/holding_item
execute if entity @s[scores={aiActICooldown=..1}] run function sprint_racer:ai/general/item_logic/improvise/_improvise_main

#are we stuck? do something!
tag @s[tag=inWater,scores={aiStuckTime=5..}] add aiswimup
execute if entity @s[tag=!inWater,nbt={OnGround:1b},scores={aiStuckTime=6..30}] run tag @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] add aijump
execute if entity @s[tag=inWater,tag=aiswimup] at @s run function sprint_racer:ai/general/swim_up
#execute if entity @s[tag=inWater,scores={aiStuckTime=29}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/battle_get_unstuck
execute unless score global gameState matches 3 if entity @s[scores={aiStuckTime=40..}] run function sprint_racer:ai/general/race_get_unstuck
execute if score global gameState matches 3 if entity @s[scores={aiStuckTime=40..}] run function sprint_racer:ai/general/battle_get_unstuck
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..}] if entity @s[scores={moveState=..2}] run function sprint_racer:ai/general/check_if_stuck_2
execute unless score global gameState matches 3 if entity @s[scores={aiStuckTime2=40..}] run function sprint_racer:ai/general/race_get_unstuck
execute if score global gameState matches 3 if entity @s[scores={aiStuckTime2=40..}] run function sprint_racer:ai/general/battle_get_unstuck
scoreboard players add @s[tag=warpstuck] aiStuckTime 1

#react to navigation stuff, such as missed checkpoints and being off-course
execute unless entity @s[scores={aiSubBehavior=5}] run function sprint_racer:ai/race/nav_logic

#jump stuff (yes, all this just to make the AI jump)
scoreboard players operation @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiJBIntensity = @s aiJBIntensity
scoreboard players operation @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiJBTime = @s aiJBTime
scoreboard players remove @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBDelay=1..}] aiJBDelay 1
tag @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBDelay=1}] add aijump
scoreboard players remove @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBDelay=1..}] aiJBDelay 1
tag @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBDelay=1}] add aijump
scoreboard players remove @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBTime=1..}] aiJBTime 1
scoreboard players set @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBTime=1}] aiJBIntensity 0
scoreboard players remove @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBTime=1..}] aiJBTime 1
scoreboard players set @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiJBTime=1}] aiJBIntensity 0
execute if entity @s[nbt={OnGround:1b}] if entity @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=aijump] run function sprint_racer:ai/general/jump/_index
execute if entity @s[nbt={OnGround:1b}] run tag @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] remove aijump
scoreboard players operation @s aiJBIntensity = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiJBIntensity
scoreboard players operation @s aiJBTime = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] aiJBTime
#^ hey. i'm from the future. this code is unfathomably bad. i can't believe they gave me a degree. should've stuck to engineering.

#movement state calculation
scoreboard players set @s moveState 0
scoreboard players set @s[scores={aiBehavior=..4},tag=!aiHealing,nbt={OnGround:1b}] moveState 2
scoreboard players set @s[scores={aiBehavior=..4},tag=inWater] moveState 2
scoreboard players set @s[tag=aiHealing,tag=!inWater] moveState 3

#air time calculation
scoreboard players add @s[nbt={OnGround:0b}] aiAirTime 1
scoreboard players set @s[nbt={OnGround:1b}] aiAirTime 0
scoreboard players set @s[tag=inWater] aiAirTime 0
scoreboard players set @s[scores={aiAirTime=26..}] aiStuckTime2 0

#healing logic
execute if entity @s[type=!wither,scores={hitboxHP=..1019}] run function sprint_racer:ai/general/heal_logic/_index
tag @s[tag=aiHealing,scores={hitboxHP=1020..}] remove aiHealing
execute if entity @s[scores={moveState=3}] run function sprint_racer:ai/general/sneak_regen

#blinded by squid
execute if entity @s[scores={blindtime=1..}] run function sprint_racer:ai/general/squid_blindness

#attack nearby players if able
execute if entity @s[tag=aiStronk] run function sprint_racer:ai/general/direct_attack/_main

#alright now let's MOVE
execute if entity @s[tag=!aiFly] unless entity @s[scores={aiBehavior=..0}] unless entity @s[scores={aiSubBehavior=5}] if score @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] gameTime matches 160.. run function sprint_racer:ai/general/movement/move_at_target
execute if entity @s[tag=aiFly] unless entity @s[scores={aiBehavior=..0}] unless entity @s[scores={aiSubBehavior=5}] run function sprint_racer:ai/general/movement/fly_at_target
tag @e[tag=myCHILDtarget] remove myCHILDtarget
scoreboard players remove @s[scores={aiFaceDirTime=1..}] aiFaceDirTime 1



#ender pearl teleport
execute if entity @s[scores={aiPearlTime=0..}] run function sprint_racer:ai/general/check_for_enderpearl

#change item held in hands when needed
scoreboard players operation @s aiDHoldItem -= @s aiHoldingItem
execute unless entity @s[scores={aiDHoldItem=0}] run function sprint_racer:ai/general/item_logic/visual_held_item/_index
scoreboard players operation @s aiDHoldItem = @s aiHoldingItem


#die when HP drops below 1000
execute if entity @s[tag=!lowhp,scores={hitboxHP=..1000}] run function sprint_racer:ai/general/die_maybe
execute if entity @s[tag=lowhp,scores={hitboxHP=..1010}] run function sprint_racer:ai/general/die_maybe