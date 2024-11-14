tellraw @a[tag=!minChat] ["",{"text":" "}]

#scoreboard players set @e[tag=w,tag=BAIautocount] optBAIcount 0
#tag @e[tag=w,tag=BAIautocount] remove BAIautocount

scoreboard players add @e[tag=w,type=armor_stand] optBAIcount 1
#tag @e[tag=w,scores={optBAIcount=10..}] add BAIautocount
scoreboard players set @e[tag=w,scores={optBAIcount=10..}] optBAIcount 1

execute if entity @e[tag=w,scores={optBAIcount=1}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x1]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=2}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x2]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=3}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x3]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=4}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x4]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=5}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x5]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=6}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x6]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=7}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x7]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=8}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x8]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,scores={optBAIcount=9}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[x9]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
#execute if entity @e[tag=w,tag=BAIautocount] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_count_battle"}}','{"text":"COUNT","bold":true,"color":"black"}','{"text":"[xAUTO]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

execute unless entity @e[tag=w,tag=realms] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_count","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"optBAIcount"},"color":"green"}]
execute unless entity @e[tag=w,tag=!realms] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_count","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"optBAIcount"},"color":"green"},{"text":" "},{"text":" "},{"text":"[!]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":"Higher AI counts are very taxing on the\nserver! Make sure your server's tick length\nstays below 50ms during gameplay.\nAbove 50ms, the AI will slow down."}}]

#execute unless entity @e[tag=w,tag=BAIautocount] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_count","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"optBAIcount"},"color":"green"},{"text":" "},{"text":" "},{"text":"[!]","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":"Higher AI counts are very taxing on the\nserver! Make sure your server's tick length\nstays below 50ms during gameplay.\nAbove 50ms, the AI will slow down."}}]
#execute if entity @e[tag=w,tag=BAIautocount] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.battle_ai_count_auto","color":"green"}]
playsound minecraft:block.note_block.hat master @a

function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign