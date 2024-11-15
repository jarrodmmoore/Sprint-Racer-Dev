tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!optBalance] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/item_balancing"}}','{"text":"ITEM BALANCE","bold":true,"color":"black"}','{"text":"[ON--TIME]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optBalance
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add timeBalance
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.item_balance_on__time","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optBalance,tag=timeBalance] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/item_balancing"}}','{"text":"ITEM BALANCE","bold":true,"color":"black"}','{"text":"[ON--POSITION]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optBalance
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove timeBalance
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.item_balance_on__position","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optBalance,tag=!timeBalance] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/item_balancing"}}','{"text":"ITEM BALANCE","bold":true,"color":"black"}','{"text":"[OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBalance
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove timeBalance
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.item_balance_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign