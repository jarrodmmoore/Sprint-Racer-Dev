clear @s iron_ingot[custom_data~{no7:1b}] 1

effect give @s resistance 1 1 false
scoreboard players add @s resistTime 200
scoreboard players set @s[scores={resistTime=601..}] resistTime 600

particle falling_dust{block_state:"minecraft:iron_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50

playsound minecraft:item.armor.equip_iron master @a

function sprint_racer_language:gameplay/misc_item_text/apply_resistance

scoreboard players set @s inputCooldown 10