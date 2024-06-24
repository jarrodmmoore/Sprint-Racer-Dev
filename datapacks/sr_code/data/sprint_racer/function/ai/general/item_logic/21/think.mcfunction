tag @s add impGotItem

#need a line of sight on a target
function sprint_racer:ai/general/item_logic/check_for_projectile_target

scoreboard players set @s rNumber 1
scoreboard players operation @s rNumber = @e[limit=1,tag=random,scores={rNumber=1..50}] rNumber

#can either shoot directly at the target or attempt to lead the shot (depends on skill)
tag @s[scores={aiSkill=..1,rNumber=45..50}] add leadprojectile
tag @s[scores={aiSkill=2,rNumber=25..50}] add leadprojectile
tag @s[scores={aiSkill=3..,rNumber=10..50}] add leadprojectile

#if we're leading the shot, project a new target ahead of where the target is moving
#this new target is projected ahead proportionally to how far away the target is
tag @s add self
execute if entity @s[tag=good2throw,tag=leadprojectile] at @e[tag=projectTarget,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["projectedtarget"]}
execute if entity @s[tag=good2throw,tag=leadprojectile] if entity @e[tag=projectTarget,tag=!ai] as @e[tag=projectedtarget] at @s rotated as @e[tag=projectTarget] rotated ~ 0 run function sprint_racer:ai/general/item_logic/lead_projectile
execute if entity @s[tag=good2throw,tag=leadprojectile] if entity @e[tag=projectTarget,tag=ai] as @e[tag=projectedtarget] at @s run function sprint_racer:ai/general/item_logic/lead_projectile_ai
tag @s remove self

#if we're leading the shot, check if the new trajectory is valid
#if it's not a clear shot, we'll just shoot directly at the target instead
execute if score #good2throw value matches 1 if entity @s[tag=leadprojectile] run function sprint_racer:ai/general/item_logic/check_lead_shot_path

execute if entity @s[tag=good2throw,tag=!leadprojectile] run tag @e[tag=projectTarget] add looktarget
execute if entity @s[tag=good2throw,tag=leadprojectile] run tag @e[tag=projectedtarget] add looktarget
execute if entity @s[tag=good2throw] run function sprint_racer:ai/general/item_logic/21/use

#if a throw did NOT happen, keep holding the item and maybe try checking again soon
scoreboard players set @s[tag=!good2throw,scores={aiHasItem21=1..}] aiHoldingItem 21
scoreboard players set @s[tag=!good2throw,scores={aiHasItem21=1..}] aiActICooldown 10

tag @s remove good2throw
tag @s remove leadprojectile

tag @e[tag=projectTarget] remove projectTarget
kill @e[tag=projectedtarget]

scoreboard players set @s[scores={aiHasItem21=..0}] aiHoldingItem 0