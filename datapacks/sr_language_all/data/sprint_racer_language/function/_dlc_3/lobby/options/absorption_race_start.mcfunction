tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA
scoreboard players add @e[tag=w,type=armor_stand] allowInvis 0

tag @e[tag=w,tag=optSetA,tag=absorpNever] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/absorption_race_start"}}','{"text":"ABSORPTION","bold":true,"color":"black"}','{"text":"@ RACE START?","bold":true,"color":"black"}','{"text":"[ALWAYS]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add absorpAlways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove absorpNever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.absorption_always","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=absorpAlways] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/absorption_race_start"}}','{"text":"ABSORPTION","bold":true,"color":"black"}','{"text":"@ RACE START?","bold":true,"color":"black"}','{"text":"[5+ PLAYERS]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove absorpAlways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove absorpNever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.absorption_5plus","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=!absorpAlways,tag=!absorpNever] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/absorption_race_start"}}','{"text":"ABSORPTION","bold":true,"color":"black"}','{"text":"@ RACE START?","bold":true,"color":"black"}','{"text":"[NEVER]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove absorpAlways
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add absorpNever
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.absorption_never","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign