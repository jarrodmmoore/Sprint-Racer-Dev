#AI logic now alternates between "real" ticks and "lazy" ticks
scoreboard players add #ai_tick value 1
execute if score #ai_tick value matches 2.. run scoreboard players set #ai_tick value 0
#0 = "lazy"
#1 = "real"
#all logic is run on "real" ticks
#only the stuff essential for smooth movement is run on "lazy" ticks


execute if score #ai_tick value matches 1 as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=!aiDisable,scores={rNumber=1..9}] run function sprint_racer:ai/general/_ai_master
execute if score #ai_tick value matches 0 as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=!aiDisable,scores={rNumber=1..9}] run function sprint_racer:ai/general/_ai_master_lazy

#clean up old AI entities that are no longer valid
execute as @e[type=!player,tag=ai] run function sprint_racer:ai/general/check_if_valid

execute as @e[tag=P_rememberAI,type=ender_pearl] at @s run function sprint_racer:ai/general/ender_pearl_remember


#some stuff I want to remember...
#aiBehavior 0 = do absolutely nothing (this is never enacted in race or battle mode, can only be triggered manually)
#aiBehavior 1 = follow breadcrumbs
#aiBehavior 2 = explore by moving in a random direction
#aiBehavior 3 = attack someone
#aiBehavior 4 = run away from someone (pretty much just aiBehavior 3 but rotated 180 degrees)

#aiSubBehavior 0 = default, no sub behavior
#aiSubBehavior 1 = get item chest and then resume behavior
#--aiSubBehavior 3 = dodge something then resume behavior (JK-- I didn't use this)
#--aiSubBehavior 4 = try to heal, then resume behavior (JK -- also didn't use this)
#aiSubBehavior 5 = fly with elytra wings

#aiSubBTimer -> amount of time AI does sub behavior until going back to default

#sub behavior is short and temporary. implemented in order to let ai behave in special ways without forgetting what it was previously doing
#I didn't use these nearly as much as I thought I would.
#The item dodging and healing sub behaviors were embedded directly into the ai's main logic
#SubBehavior 5 could arguably just be a regular behavior.