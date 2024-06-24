tag @s add impGotItem

execute if entity @s[scores={moving=1..,speedlevel=3..,hitstun=..0},nbt={OnGround:1b}] run function sprint_racer:ai/general/item_logic/15/use

scoreboard players set @s[scores={aiHasItem15=1..}] aiHoldingItem 15
scoreboard players set @s[scores={aiHasItem15=1..}] aiActICooldown 50

scoreboard players set @s[scores={aiHasItem15=..0}] aiHoldingItem 0