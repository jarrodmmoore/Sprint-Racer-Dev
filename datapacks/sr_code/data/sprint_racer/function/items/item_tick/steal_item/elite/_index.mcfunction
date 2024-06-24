tag @s remove gotEm
scoreboard players set @s giveQty 0
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite0:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite0
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite1:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite1
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite2:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite2
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite3:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite3
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite4:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite4
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite5:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite5
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite6:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite6
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite7:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite7
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite8:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite8
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite9:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite9
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite10:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite10
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite11:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite11
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite12:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite12
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite13:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite13
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite14:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite14
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite15:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite15
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite16:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite16
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite17:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite17
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite18:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite18
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite19:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite19
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite20:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite20
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget1,nbt={SelectedItem:{components:{"minecraft:custom_data":{elite_fishing_rod:1b}}}}] run function sprint_racer:items/item_tick/steal_item/elite/elite_fishing_rod

execute if entity @s[tag=gotEm] run function sprint_racer_language:gameplay/misc_item_text/stolen_item_elite

execute if entity @s[tag=assassin] run tag @e[tag=stealTarget1,scores={itemStolen=1..}] add getClocked
execute if entity @s[tag=assassin] run scoreboard players operation @e[tag=stealTarget1] attackerID = @s playerID
execute if entity @s[tag=assassin] run scoreboard players set @e[tag=stealTarget1] attackTime 100

scoreboard players set @e[tag=stealTarget1] enderSteal 0
scoreboard players set @s enderman 351

#get the stolen item immediately
execute if entity @s[tag=gotEm] if score @s giveItem matches 0.. run function sprint_racer:items/item_tick/enderman_tracking/phase4_instant
tag @s remove gotEm