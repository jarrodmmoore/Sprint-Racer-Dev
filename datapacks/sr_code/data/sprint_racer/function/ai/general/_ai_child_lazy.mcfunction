#called from _ai_master, run by @e[limit=1,tag=myCHILD]

#increment lifetime score for ai entity
scoreboard players add @s aiLifetime 1


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


#air time calculation
scoreboard players add @s[nbt={OnGround:0b}] aiAirTime 1
scoreboard players set @s[nbt={OnGround:1b}] aiAirTime 0
scoreboard players set @s[tag=inWater] aiAirTime 0
scoreboard players set @s[scores={aiAirTime=26..}] aiStuckTime2 0

#flight is 20Hz
execute if entity @s[scores={aiSubBehavior=5}] run function sprint_racer:ai/general/behaviors/elytra_flight/elytra_main

#alright now let's MOVE
execute if entity @s[tag=aiRememberVelocity,tag=!aiFly] unless entity @s[scores={aiBehavior=..0}] unless entity @s[scores={aiSubBehavior=5}] if score @e[tag=w,type=armor_stand,limit=1] gameTime matches 160.. run function sprint_racer:ai/general/movement/move_at_target_echo
execute if entity @s[tag=aiRememberVelocity,tag=aiFly] unless entity @s[scores={aiBehavior=..0}] unless entity @s[scores={aiSubBehavior=5}] run function sprint_racer:ai/general/movement/fly_at_target_echo
tag @e[tag=myCHILDtarget] remove myCHILDtarget

#ender pearl teleport
execute if entity @s[scores={aiPearlTime=0..}] run function sprint_racer:ai/general/check_for_enderpearl