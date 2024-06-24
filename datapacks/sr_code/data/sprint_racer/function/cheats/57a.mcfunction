#let's go 3 at a time, here
#nbt checks are... a lot.
scoreboard players add #slotCycle value 1
execute if score #slotCycle value matches 4.. run scoreboard players set #slotCycle value 1

#count how many slots each player is using to hold items
#remove any items in slots that are over the limit


#unlimited slots?
execute if score #cheatSlotLimit value matches 10.. run scoreboard players set @a inventoryCheck 11


execute if score #slotCycle value matches 1 run scoreboard players set @a itemSlotCount 0
execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.0 with air

execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.1 with air

execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 1 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.2 with air

execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.3 with air

execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.4 with air

execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 2 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.5 with air

execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.6 with air

execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:7b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.7 with air

execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if entity @s[nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_data":{item:1b}}}]}] run scoreboard players add @s itemSlotCount 1
execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value if entity @s[nbt={Inventory:[{Slot:8b,components:{"minecraft:custom_data":{item:1b}}}]}] run item replace entity @s hotbar.8 with air

#message when item is cleared
execute if score #slotCycle value matches 3 as @a[gamemode=adventure] if score @s itemSlotCount > #cheatSlotLimit value run function sprint_racer_language:_dlc_5/cheats/item_slot_cleared