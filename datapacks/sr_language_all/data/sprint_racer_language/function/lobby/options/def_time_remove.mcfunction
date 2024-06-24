tellraw @a[tag=!minChat] ["",{"text":" "}]

data merge block 1595 88 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/def_time_add"}}','{"text":"DEFAULT TIME:","bold":true,"color":"black"}','{"text":"[ADD 5s]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
data merge block 1596 88 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/def_time"}}','{"text":"DEFAULT TIME:","bold":true,"color":"black"}','{"text":"[SET TO 30s]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
data merge block 1597 88 356 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/def_time_remove"}}','{"text":"DEFAULT TIME:","bold":true,"color":"black"}','{"text":"[REMOVE 5s]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

scoreboard players remove @e[tag=w,scores={defLobbyTime=20..}] defLobbyTime 5
tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.lobby_time_set_to","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"defLobbyTime"},"color":"green"},{"text":"s","color":"green"}]
tellraw @s[tag=minChat] ["",{"translate":"sr.lobby.options.lobby_time_set_to","color":"green"},{"score":{"name":"@e[tag=w,limit=1]","objective":"defLobbyTime"},"color":"green"},{"text":"s","color":"green"}]

execute at @s run playsound minecraft:block.note_block.hat master @s
execute at @s as @a[tag=!minChat,distance=1..] run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign