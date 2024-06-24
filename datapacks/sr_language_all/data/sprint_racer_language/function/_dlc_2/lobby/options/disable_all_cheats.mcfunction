tellraw @a[tag=!minChat] ["",{"text":" "}]

data merge block 1588 98 440 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/disable_all_cheats"}}','{"text":"CHEATS","bold":true,"color":"black"}','{"text":"[DISABLE ALL]","color":"gray"}','{"text":""}']},is_waxed:1b}

tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.cheats_disabled","color":"green"}]
playsound minecraft:block.note_block.hat master @a

execute as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ 100000 ~ 100000

execute as @e[type=armor_stand,tag=cheats] run function sprint_racer:cheats/remove_all_cheats

tag @s remove clickSign