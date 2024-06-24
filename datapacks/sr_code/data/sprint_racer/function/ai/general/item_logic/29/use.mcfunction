#use super jump boost

scoreboard players set @s aiJBTime 240
scoreboard players set @s aiJBIntensity 8

particle falling_dust{block_state:"minecraft:emerald_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50
particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.7 0.7 0.7 1 10

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.6
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.6

function sprint_racer_language:gameplay/misc_item_text/apply_jump_boost

scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem29 1
scoreboard players remove @s aiHasElite 1



scoreboard players set @s[scores={aiHasItem29=1..}] aiHoldingItem 29
scoreboard players set @s[scores={aiHasItem29=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem29=..0}] aiHoldingItem 0