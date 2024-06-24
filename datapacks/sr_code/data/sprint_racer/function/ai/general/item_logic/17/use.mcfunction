#deploy anvil
#this is just the function ran by players copied wholesale because I'd like this map to release within the next century
function sprint_racer:items/item_tick/normal/anvil_of_justice/_index

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem17 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem17=1..}] aiHoldingItem 17
scoreboard players set @s[scores={aiHasItem17=1..}] aiActICooldown 100