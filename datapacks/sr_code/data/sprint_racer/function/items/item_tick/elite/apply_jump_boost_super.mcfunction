clear @s emerald[custom_data~{elite9:1b}] 1

effect clear @s jump_boost
effect give @s jump_boost 12 8 false

particle falling_dust{block_state:"minecraft:emerald_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50
particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.7 0.7 0.7 1 10

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.6
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.6

function sprint_racer_language:gameplay/misc_item_text/apply_jump_boost

scoreboard players set @s inputCooldown 15