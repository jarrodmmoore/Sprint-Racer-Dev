#clear a new slot every tick and cycle through
scoreboard players set @s[scores={inventoryCheck=27..}] inventoryCheck 0
scoreboard players add @s inventoryCheck 1

execute if entity @s[scores={inventoryCheck=1..9}] run function sprint_racer:inventory_check/_index_1_9
execute if entity @s[scores={inventoryCheck=10..18}] run function sprint_racer:inventory_check/_index_10_18
execute if entity @s[scores={inventoryCheck=19..27}] run function sprint_racer:inventory_check/_index_19_27


#inventory controls
tag @s remove hasControls
tag @s remove hasInv1
tag @s remove hasInv2
tag @s remove hasInv3
tag @s remove hasInv4
tag @s remove hasInv5
tag @s remove hasInv6
tag @s remove hasInv7
tag @s[tag=hasInv8] remove hasInv8
tag @s[tag=hasInv9] remove hasInv9

tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invPlay:1b}}}]}] add hasInv1
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invTimer:1b}}}]}] add hasInv2
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invJukebox:1b}}}]}] add hasInv3
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invBottle:1b}}}]}] add hasInv4
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invHitSound:1b}}}]}] add hasInv5
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invSign:1b}}}]}] add hasInv6
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invVote:1b}}}]}] add hasInv7
execute if entity @s[tag=needAdminControl] run tag @s[nbt={Inventory:[{Slot:35b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invAdmin:1b}}}]}] add hasInv8
execute if entity @s[tag=needShoeButton] run tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:shulker_shell",components:{"minecraft:custom_data":{invControl:1b,invShoes:1b}}}]}] add hasInv9

#actions are triggered by removing one object from the inventory, not multiple at the same time which would happen from a /clear
execute if entity @s[tag=!hasInv1,tag=hasInv2] run function sprint_racer:inventory_check/inventory_controls/swap_playing
execute if entity @s[tag=!hasInv2,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/swap_hud
execute if entity @s[tag=!hasInv3,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/toggle_music
execute if entity @s[tag=!hasInv4,tag=hasInv1] at @s run function sprint_racer_language:lobby/options/speedometer
execute if entity @s[tag=!hasInv5,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/change_hitsound
execute if entity @s[tag=!hasInv6,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/toggle_minimal_chat
execute if entity @s[tag=!hasInv7,tag=hasInv1] unless score global gameState matches ..0 unless score global gameState matches 2 unless score global gameState matches 4.. run function sprint_racer:inventory_check/inventory_controls/vote_menu
execute if entity @s[tag=needAdminControl,tag=!hasInv8,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/admin_menu
execute if entity @s[tag=needShoeButton,tag=!hasInv9,tag=hasInv1] run function sprint_racer:inventory_check/inventory_controls/change_shoes

tag @s[tag=hasInv1,tag=hasInv2,tag=hasInv3,tag=hasInv4,tag=hasInv5,tag=hasInv6,tag=hasInv7] add hasControls
tag @s[tag=needAdminControl,tag=!hasInv8] remove hasControls
tag @s[tag=needShoeButton,tag=!hasInv9] remove hasControls

#clear?
clear @s[tag=!hasControls] shulker_shell[custom_data~{invControl:1b}]

execute if entity @s[tag=!hasControls] run function sprint_racer_language:_dlc_4/give_inventory_controls