tag @s remove gotEm
scoreboard players set @s giveQty 0
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no0:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no0
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no1:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no1
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no2:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no2
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no3:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no3
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no4:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no4
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no5:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no5
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no6:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no6
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no7:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no7
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no8:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no8
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no9:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no9
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no10:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no10
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no11:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no11
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no12:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no12
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no13:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no13
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no14:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no14
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no15:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no15
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no16:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no16
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no17:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no17
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no18:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no18
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no19:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no19
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{no20:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/no20
execute unless entity @s[tag=gotEm] if entity @e[tag=stealTarget2,nbt={SelectedItem:{components:{"minecraft:custom_data":{fishing_rod:1b}}}}] run function sprint_racer:items/item_tick/steal_item/normal/fishing_rod

execute if entity @s[tag=gotEm] run function sprint_racer_language:gameplay/misc_item_text/stolen_item_normal

execute if entity @s[tag=assassin] run tag @e[tag=stealTarget2,scores={itemStolen=1..}] add getClocked
execute if entity @s[tag=assassin] run scoreboard players operation @e[tag=stealTarget2] attackerID = @s playerID
execute if entity @s[tag=assassin] run scoreboard players set @e[tag=stealTarget2] attackTime 100

scoreboard players set @e[tag=stealTarget2] enderSteal 0
scoreboard players set @s enderman 351

#get the stolen item immediately
execute if entity @s[tag=gotEm] if score @s giveItem matches 0.. run function sprint_racer:items/item_tick/enderman_tracking/phase4_instant
tag @s remove gotEm