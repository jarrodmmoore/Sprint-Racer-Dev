#deploy squid
function sprint_racer:items/item_tick/normal/deploy_squid

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem19 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem19=1..}] aiHoldingItem 19
scoreboard players set @s[scores={aiHasItem19=1..}] aiActICooldown 100