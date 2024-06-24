tag @s add impGotItem

execute unless entity @s[scores={enderman=..9999}] run function sprint_racer:ai/general/item_logic/37/use

scoreboard players set @s[scores={aiHasItem37=1..}] aiHoldingItem 37
scoreboard players set @s[scores={aiHasItem37=1..}] aiActICooldown 100

scoreboard players set @s[scores={aiHasItem37=..0}] aiHoldingItem 0