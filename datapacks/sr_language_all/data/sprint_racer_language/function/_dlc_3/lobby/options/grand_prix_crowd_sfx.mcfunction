tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=noCrowdSFX] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1583 69 431 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/grand_prix_crowd_sfx"}}','{"text":"CROWD SFX:","bold":true,"color":"black"}','{"text":"[ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] remove noCrowdSFX
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.crowd_sfx_on","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=!noCrowdSFX] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1583 69 431 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/grand_prix_crowd_sfx"}}','{"text":"CROWD SFX:","bold":true,"color":"black"}','{"text":"[OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,limit=1,type=armor_stand] add noCrowdSFX
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.crowd_sfx_off","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA] remove optSetA
tag @e[tag=w,type=armor_stand] remove optSetB

tag @s remove clickSign