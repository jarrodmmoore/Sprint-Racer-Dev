#deploy squid
function sprint_racer:items/item_tick/normal/cast_lightning

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem20 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem20=1..}] aiHoldingItem 20
scoreboard players set @s[scores={aiHasItem20=1..}] aiActICooldown 100