tag @s add impGotItem

#need a line of sight on a target
function sprint_racer:ai/general/item_logic/check_for_projectile_target

execute if entity @s[tag=good2throw] run tag @e[tag=projectTarget] add looktarget
execute if entity @s[tag=good2throw] run function sprint_racer:ai/general/item_logic/obliterator/use

#if a shot did NOT happen, keep holding the item and maybe try checking again soon
scoreboard players set @s[tag=!good2throw,scores={aiHasObliterator=1..}] aiHoldingItem 42
scoreboard players set @s[tag=!good2throw,scores={aiHasObliterator=1..}] aiActICooldown 10

#lower difficulty bots more likely to put away if no shot happened
#execute store result score #test value run random value 1..10
#execute if entity @s[tag=good2throw,scores={aiSkill=3..}] if score #test value matches 10 run scoreboard players set @s aiHoldingItem 0
#execute if entity @s[tag=good2throw,scores={aiSkill=2}] if score #test value matches 8..10 run scoreboard players set @s aiHoldingItem 0
#execute if entity @s[tag=good2throw,scores={aiSkill=..1}] if score #test value matches 6..10 run scoreboard players set @s aiHoldingItem 0

tag @s remove good2throw
tag @e[tag=projectTarget] remove projectTarget

scoreboard players set @s[scores={aiHasObliterator=..0}] aiHoldingItem 0