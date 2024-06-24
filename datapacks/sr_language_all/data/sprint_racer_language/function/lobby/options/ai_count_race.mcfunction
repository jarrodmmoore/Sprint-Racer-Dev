tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players set @e[tag=w,tag=RAIautocount] optRAIcount 0
tag @e[tag=w,tag=RAIautocount] remove RAIautocount

scoreboard players add @e[tag=w,type=armor_stand] optRAIcount 1
tag @e[tag=w,scores={optRAIcount=10..}] add RAIautocount
scoreboard players set @e[tag=w,scores={optRAIcount=..0}] optRAIcount 1

execute if entity @e[tag=w,scores={optRAIcount=1},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 1]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=2},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 2]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=3},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 3]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=4},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 4]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=5},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 5]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=6},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 6]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=7},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 7]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=8},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 8]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optRAIcount=9},tag=!RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: 9]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_race"}}','{"text":"RACE AI:","bold":true,"color":"black"}','{"text":"[COUNT: AUTO]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

execute unless entity @e[tag=w,tag=RAIautocount] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.race_ai_count","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"optRAIcount"},"color":"green"},{"text":" "},{"text":" "},{"text":"[!]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":"Higher AI counts are very taxing on the\nserver! Make sure your server's tick length\nstays below 50ms during gameplay.\nAbove 50ms, the AI will slow down."}}]
execute if entity @e[tag=w,tag=RAIautocount] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.race_ai_count_auto","color":"green"}]
playsound minecraft:block.note_block.hat master @a

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign