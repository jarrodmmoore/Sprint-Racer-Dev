tag @s add impGotItem

execute if entity @s[scores={moving=1..,speedlevel=3..,hitstun=..0},nbt={OnGround:1b}] run function sprint_racer:ai/general/item_logic/34/use

scoreboard players set @s[scores={aiHasItem34=1..}] aiHoldingItem 34
scoreboard players set @s[scores={aiHasItem34=1..}] aiActICooldown 90

scoreboard players set @s[scores={aiHasItem34=..0}] aiHoldingItem 0