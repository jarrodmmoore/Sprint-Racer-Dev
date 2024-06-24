tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!classicHUD] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1585 88 370 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/in_game_hud"}}','{"text":"IN-GAME HUD","bold":true,"color":"black"}','{"text":"[CLASSIC]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add classicHUD
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.hud_classic","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=classicHUD] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1585 88 370 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/in_game_hud"}}','{"text":"IN-GAME HUD","bold":true,"color":"black"}','{"text":"[MODERN]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove classicHUD
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.hud_modern","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign