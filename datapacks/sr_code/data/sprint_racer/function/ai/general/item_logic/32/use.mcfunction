#use elytra

scoreboard players set @s elytraTimer 1

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 60
scoreboard players remove @s aiHasItem32 1
scoreboard players remove @s aiHasElite 1

scoreboard players set @s aiHasFirework 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem32=1..}] aiHoldingItem 32
scoreboard players set @s[scores={aiHasItem32=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem32=..0}] aiHoldingItem 0