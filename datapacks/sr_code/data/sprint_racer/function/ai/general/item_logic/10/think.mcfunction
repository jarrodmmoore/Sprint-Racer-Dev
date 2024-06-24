tag @s add impGotItem

execute if entity @s[nbt={OnGround:1b},scores={elytraTimer=..0,scriptMove=..0,speedBoost=..0}] positioned ^ ^ ^3 unless entity @e[tag=AIBC,type=marker,scores={AIBC_event=1},distance=..5] positioned ^ ^ ^-3 run function sprint_racer:ai/general/item_logic/10/use

scoreboard players set @s[scores={aiHasItem10=1..}] aiHoldingItem 10
scoreboard players set @s[scores={aiHasItem10=1..}] aiActICooldown 45

scoreboard players set @s[scores={aiHasItem10=..0}] aiHoldingItem 0