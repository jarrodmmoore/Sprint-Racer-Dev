#hold sword

effect clear @s weakness

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem4=1..}] aiHoldingItem 4
scoreboard players set @s[scores={aiHasItem4=1..}] aiActICooldown 75