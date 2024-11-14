tellraw @a[tag=!minChat] ["",{"text":" "}]

#toggle RAIautocount on/off
execute store result score #test value run execute if entity @e[tag=w,type=armor_stand,tag=RAIautocount,limit=1]
execute if score #test value matches ..0 run tag @e[tag=w,type=armor_stand] add RAIautocount
execute if score #test value matches 1.. run tag @e[tag=w,type=armor_stand] remove RAIautocount

#sign
execute if entity @e[tag=w,type=armor_stand,tag=RAIautocount] run data merge block 1613 88 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_add_type_race"}}','{"text":"PLAYER COUNT","bold":true,"color":"black"}','{"text":"[MEET]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,type=armor_stand,tag=!RAIautocount] run data merge block 1613 88 360 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/ai_add_type_race"}}','{"text":"PLAYER COUNT","bold":true,"color":"black"}','{"text":"[ADD TO]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

#feedback text
execute if score #test value matches ..0 run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.race_ai_mode_meet","color":"green"}]
execute if score #test value matches 1.. run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.race_ai_mode_add","color":"green"}]

#sound
playsound minecraft:block.note_block.hat master @a

#update zombies
function sprint_racer:game_logic/0/props/update_jail_zombies

tag @s remove clickSign