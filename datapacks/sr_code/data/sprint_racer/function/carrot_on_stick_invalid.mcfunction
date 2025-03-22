execute unless entity @s[gamemode=creative] run tellraw @s ["",{color:"red",translate:"sr.error.cannot_hold_items_in_offhand",bold:true}]
playsound minecraft:block.lava.extinguish master @s ~ ~ ~ .7 1 .7
clear @s minecraft:carrot_on_a_stick
tag @s add swappedHands