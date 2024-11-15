tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=optNoItems] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[ALWAYS ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[ALWAYS ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optItems
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optItemsB
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optNoItems
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.items_all_gamemodes","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optItems] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[BATTLE ONLY]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[BATTLE ONLY]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optItemsB
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optItems
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optNoItems
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.items_battle_only","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optItemsB] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[ALWAYS OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/items"}}','{"text":"ITEMS","bold":true,"color":"black"}','{"text":"[ALWAYS OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optNoItems
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optItems
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optItemsB
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.items_always_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[tag=w,tag=optSetA] add optItems
tag @e[tag=w,tag=optSetA] remove optSetA

tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign