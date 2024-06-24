#drop tnt as a trap

function sprint_racer_language:gameplay/ai_drop_item/3_trap

tag @s add good2throw

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 20
scoreboard players set @s inputCooldown 9
scoreboard players remove @s aiHasItem3 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem3=1..}] aiHoldingItem 3
scoreboard players set @s[scores={aiHasItem3=1..}] aiActICooldown 10