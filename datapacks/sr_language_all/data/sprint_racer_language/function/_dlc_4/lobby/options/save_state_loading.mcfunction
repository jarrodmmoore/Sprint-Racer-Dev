tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!anyPlayerLoadsSave] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1601 88 369 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/save_state_loading"}}','{"text":"SAVE STATE","bold":true,"color":"black"}','{"text":"LOADING","bold":true,"color":"black"}','{"text":"[ANY PLAYER]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] add anyPlayerLoadsSave
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.any_player_loads_save_states","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=anyPlayerLoadsSave] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1601 88 369 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/save_state_loading"}}','{"text":"SAVE STATE","bold":true,"color":"black"}','{"text":"LOADING","bold":true,"color":"black"}','{"text":"[ADMIN ONLY]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] remove anyPlayerLoadsSave
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.only_admin_loads_save_states","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign