tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA
scoreboard players add @e[tag=w,type=armor_stand] allowInvis 0

tag @e[tag=w,tag=optSetA,tag=!noMusicReset] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1609 80 364 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/reset_music"}}','{"text":"RESET MUSIC","bold":true,"color":"black"}','{"text":"ON DEATH?","bold":true,"color":"black"}','{"text":"[NO]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add noMusicReset
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.music_reset_on_death_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=noMusicReset] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1609 80 364 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/reset_music"}}','{"text":"RESET MUSIC","bold":true,"color":"black"}','{"text":"ON DEATH?","bold":true,"color":"black"}','{"text":"[NO]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove noMusicReset
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.music_reset_on_death_on","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign