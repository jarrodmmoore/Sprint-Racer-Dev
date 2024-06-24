#hold fire axe

effect clear @s weakness

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem24=1..}] aiHoldingItem 24
scoreboard players set @s[scores={aiHasItem24=1..}] aiActICooldown 75