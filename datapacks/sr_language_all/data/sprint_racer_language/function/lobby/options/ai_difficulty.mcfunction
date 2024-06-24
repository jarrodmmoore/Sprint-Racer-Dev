tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players add @e[tag=w,type=armor_stand] optAIdiff 1
scoreboard players set @e[tag=w,type=armor_stand,scores={optAIdiff=4..}] optAIdiff -1
scoreboard players set @e[tag=w,type=armor_stand,scores={optAIdiff=..-2}] optAIdiff 2

execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}}','{"text":"AI DIFFICULTY:","bold":true,"color":"black"}','{"text":"[ADAPTIVE]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=0}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}}','{"text":"AI DIFFICULTY:","bold":true,"color":"black"}','{"text":"[VERY EASY]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=1}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}}','{"text":"AI DIFFICULTY:","bold":true,"color":"black"}','{"text":"[EASY]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=2}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}}','{"text":"AI DIFFICULTY:","bold":true,"color":"black"}','{"text":"[NORMAL]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=3}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}}','{"text":"AI DIFFICULTY:","bold":true,"color":"black"}','{"text":"[HARD]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.ai_difficulty_auto","color":"green"}]
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=0}] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.ai_difficulty_very_easy","color":"green"}]
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=1}] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.ai_difficulty_easy","color":"green"}]
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=2}] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.ai_difficulty_normal","color":"green"}]
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=3}] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.ai_difficulty_hard","color":"green"}]
playsound minecraft:block.note_block.hat master @a

tag @s remove clickSign