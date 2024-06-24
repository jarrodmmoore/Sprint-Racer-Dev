tag @s add gotEm

clear @a[tag=stealTarget1] baked_potato[custom_data~{elite0:1b}] 1
scoreboard players add @s giveQty 1

#use recursion to nab up to 10 items from the victim's active slot
execute if entity @s[scores={giveQty=..9}] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite0:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite0

scoreboard players set @e[tag=stealTarget1] itemStolen 100
scoreboard players set @s giveItem 100