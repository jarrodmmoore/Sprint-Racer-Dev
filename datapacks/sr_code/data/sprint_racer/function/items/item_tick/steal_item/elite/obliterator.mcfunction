tag @s add gotEm

clear @a[tag=stealTarget1] observer[custom_data~{eliteObliterator:1b}] 1
scoreboard players add @s giveQty 1

scoreboard players set @e[tag=stealTarget1] itemStolen 123
scoreboard players set @s giveItem 123