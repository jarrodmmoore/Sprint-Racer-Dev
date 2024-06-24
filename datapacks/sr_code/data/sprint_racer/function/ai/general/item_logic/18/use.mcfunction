#deploy enderman thief
scoreboard players set @s enderman 0

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem18 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem18=1..}] aiHoldingItem 18
scoreboard players set @s[scores={aiHasItem18=1..}] aiActICooldown 100