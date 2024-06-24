tag @s add gotEm

clear @a[tag=stealTarget2] golden_sword[custom_data~{no4:1b}] 1
scoreboard players add @s giveQty 1

scoreboard players set @e[tag=stealTarget2] itemStolen 4
scoreboard players set @s giveItem 4