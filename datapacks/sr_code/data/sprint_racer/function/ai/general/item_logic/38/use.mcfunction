#deploy enderman thief
tag @s add assassin
scoreboard players set @s enderman 0

playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .8

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem38 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem38=1..}] aiHoldingItem 38
scoreboard players set @s[scores={aiHasItem38=1..}] aiActICooldown 100