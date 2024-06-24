tag @s add impGotItem

execute unless entity @s[scores={enderman=..9999}] run function sprint_racer:ai/general/item_logic/17/use

scoreboard players set @s[scores={aiHasItem17=1..}] aiHoldingItem 17
scoreboard players set @s[scores={aiHasItem17=1..}] aiActICooldown 100

scoreboard players set @s[scores={aiHasItem17=..0}] aiHoldingItem 0