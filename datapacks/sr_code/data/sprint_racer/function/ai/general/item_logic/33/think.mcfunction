tag @s add impGotItem

execute if entity @s[scores={moving=1..,speedlevel=3..,hitstun=..0},nbt={OnGround:1b}] run function sprint_racer:ai/general/item_logic/33/use

scoreboard players set @s[scores={aiHasItem33=1..}] aiHoldingItem 33
scoreboard players set @s[scores={aiHasItem33=1..}] aiActICooldown 45

scoreboard players set @s[scores={aiHasItem33=..0}] aiHoldingItem 0