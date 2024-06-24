tag @s add impGotItem

execute if entity @s[scores={moving=1..,speedlevel=3..,hitstun=..0},nbt={OnGround:1b}] run function sprint_racer:ai/general/item_logic/14/use

scoreboard players set @s[scores={aiHasItem14=1..}] aiHoldingItem 14
scoreboard players set @s[scores={aiHasItem14=1..}] aiActICooldown 90

scoreboard players set @s[scores={aiHasItem14=..0}] aiHoldingItem 0