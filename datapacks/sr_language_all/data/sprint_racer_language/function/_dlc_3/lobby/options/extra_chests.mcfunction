tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!noExtraChest] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1593 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/extra_chests"}}','{"text":"EXTRA CHESTS:","bold":true,"color":"black"}','{"text":"[NEVER]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] add noExtraChest
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.extra_chests_never","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=noExtraChest] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1593 79 433 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/extra_chests"}}','{"text":"EXTRA CHESTS:","bold":true,"color":"black"}','{"text":"[5+ PLAYERS]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] remove noExtraChest
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.extra_chests_5plus","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign