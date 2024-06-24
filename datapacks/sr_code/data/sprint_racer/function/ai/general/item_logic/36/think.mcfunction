tag @s add impGotItem

execute if entity @s[scores={moving=1..,speedlevel=3..,hitstun=..0},nbt={OnGround:1b}] run function sprint_racer:ai/general/item_logic/36/use

scoreboard players set @s[scores={aiHasItem36=1..}] aiHoldingItem 36
scoreboard players set @s[scores={aiHasItem36=1..}] aiActICooldown 100

scoreboard players set @s[scores={aiHasItem36=..0}] aiHoldingItem 0