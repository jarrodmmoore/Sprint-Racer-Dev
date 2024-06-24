tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove optSetB
tag @e[tag=w,type=armor_stand] add optSetA

tag @e[tag=w,tag=optSetA,tag=!nospeedo] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1580 88 370 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/speedometer_enable"}}','{"text":"SPEEDOMETER","bold":true,"color":"black"}','{"text":"[OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] add nospeedo
execute if entity @e[tag=w,tag=optSetB] run bossbar set minecraft:speedo players
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.bossbar_speedometer_off","color":"red"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB

tag @e[tag=w,tag=optSetA,tag=nospeedo] add optSetB
execute if entity @e[tag=w,tag=optSetB] run data merge block 1580 88 370 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/speedometer_enable"}}','{"text":"SPEEDOMETER","bold":true,"color":"black"}','{"text":"[ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,tag=optSetB] run tag @e[tag=w,type=armor_stand] remove nospeedo
execute if entity @e[tag=w,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.bossbar_speedometer_on","color":"green"}]
execute if entity @e[tag=w,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,tag=optSetB] remove optSetA
tag @e[tag=w,tag=optSetB] remove optSetB


#missing tags, give new one
tag @e[tag=w,tag=optSetA] add mps
tag @e[tag=w,tag=optSetA] remove optSetA

tag @e[tag=w,type=armor_stand] remove optSetB

tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.bossbar_speedometer_is_singleplayer_only","color":"gray"}]

tag @s remove clickSign