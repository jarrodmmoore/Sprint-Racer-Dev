clear @s emerald[custom_data~{no9:1b}] 1

effect clear @s jump_boost
effect give @s jump_boost 6 5 false

particle falling_dust{block_state:"minecraft:emerald_block"} ~ ~1 ~ 0.7 0.7 0.7 1 50

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1.2

function sprint_racer_language:gameplay/misc_item_text/apply_jump_boost

scoreboard players set @s inputCooldown 15