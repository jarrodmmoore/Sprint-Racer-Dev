#use jump boost

scoreboard players set @s aiJBTime 120
scoreboard players set @s aiJBIntensity 5

particle falling_dust{block_state:"minecraft:emerald_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.2

function sprint_racer_language:gameplay/misc_item_text/apply_jump_boost

scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem9 1
scoreboard players remove @s aiHasNormal 1



scoreboard players set @s[scores={aiHasItem9=1..}] aiHoldingItem 9
scoreboard players set @s[scores={aiHasItem9=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem9=..0}] aiHoldingItem 0