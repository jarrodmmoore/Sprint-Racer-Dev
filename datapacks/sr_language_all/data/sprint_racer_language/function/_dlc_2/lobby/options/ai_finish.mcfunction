tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!allowAIfinish] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1615 91 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_finish"}}','{"text":"LET AI FINISH?","bold":true,"color":"black"}','{"text":"[YES]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] add allowAIfinish
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.allow_ai_finish_on","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=allowAIfinish] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1615 91 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_finish"}}','{"text":"LET AI FINISH?","bold":true,"color":"black"}','{"text":"[NO]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] remove allowAIfinish
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.allow_ai_finish_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign