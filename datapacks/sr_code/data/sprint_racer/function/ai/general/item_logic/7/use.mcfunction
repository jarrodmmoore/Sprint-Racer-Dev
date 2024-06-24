#apply resistance

effect give @s resistance 1 1 false
scoreboard players add @s resistTime 200
scoreboard players set @s[scores={resistTime=601..}] resistTime 600

particle falling_dust{block_state:"minecraft:iron_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50

playsound minecraft:item.armor.equip_iron master @a

function sprint_racer_language:gameplay/misc_item_text/apply_resistance

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 10
scoreboard players remove @s aiHasItem7 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem7=1..}] aiHoldingItem 7
scoreboard players set @s[scores={aiHasItem7=1..}] aiActICooldown 10