tag @s add gotEm

clear @a[tag=stealTarget1] wooden_sword[custom_data~{battlebat_elite:1b}] 1
scoreboard players add @s giveQty 1

scoreboard players set @e[tag=stealTarget1] itemStolen 122
scoreboard players set @s giveItem 122