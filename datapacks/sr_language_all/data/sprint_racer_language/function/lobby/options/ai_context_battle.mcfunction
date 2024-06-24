tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=optBAInever] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_context_battle"}}','{"text":"BATTLE AI:","bold":true,"color":"black"}','{"text":"[SINGLEPLAYER]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optBAIsingle
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAIalways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAInever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_singleplayer","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optBAIsingle] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_context_battle"}}','{"text":"BATTLE AI:","bold":true,"color":"black"}','{"text":"[ALWAYS ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAIsingle
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optBAIalways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAInever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_always_on","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=optBAIalways] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_context_battle"}}','{"text":"BATTLE AI:","bold":true,"color":"black"}','{"text":"[ALWAYS OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAIsingle
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove optBAIalways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add optBAInever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_always_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[tag=w,tag=optSetA] add optBAIsingle
tag @e[tag=w,tag=optSetA] remove optSetA

tag @e[tag=w,type=armor_stand] remove optSetB

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign