tag @s add gotEm

clear @a[tag=stealTarget2] glass[custom_data~{no6:1b}] 1
scoreboard players add @s giveQty 1

#use recursion to nab up to 10 items from the victim's active slot
execute if entity @s[scores={giveQty=..9}] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no6:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no6

scoreboard players set @e[tag=stealTarget2] itemStolen 6
scoreboard players set @s giveItem 6