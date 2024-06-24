#drop tnt as a trap

function sprint_racer_language:gameplay/ai_drop_item/23_trap

tag @s add good2throw

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 30
scoreboard players set @s inputCooldown 9
scoreboard players remove @s aiHasItem23 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem23=1..}] aiHoldingItem 23
scoreboard players set @s[scores={aiHasItem23=1..}] aiActICooldown 10