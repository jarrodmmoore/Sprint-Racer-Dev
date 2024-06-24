tag @s add impGotItem

execute if entity @s[nbt={OnGround:1b},scores={elytraTimer=..0,scriptMove=..0,speedBoost=..0}] run function sprint_racer:ai/general/item_logic/30/use

scoreboard players set @s[scores={aiHasItem30=1..}] aiHoldingItem 30
scoreboard players set @s[scores={aiHasItem30=1..}] aiActICooldown 45

scoreboard players set @s[scores={aiHasItem30=..0}] aiHoldingItem 0