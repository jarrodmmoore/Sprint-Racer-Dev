tellraw @a[tag=!minChat] ["",{text:" "}]

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIdiff 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=4..}] optBAIdiff -1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=..-2}] optBAIdiff 2

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=-1}] run data merge block 1613 88 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_battle"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[ADAPTIVE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=0}] run data merge block 1613 88 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_battle"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[VERY EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=1}] run data merge block 1613 88 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_battle"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=2}] run data merge block 1613 88 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_battle"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[NORMAL]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=3}] run data merge block 1613 88 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_battle"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[HARD]",color:"dark_blue"},{text:""}]},is_waxed:1b}

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=-1}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_difficulty_auto",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=0}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_difficulty_very_easy",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=1}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_difficulty_easy",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=2}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_difficulty_normal",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optBAIdiff=3}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_difficulty_hard",color:"green"}]
playsound minecraft:block.note_block.hat master @a

#update custom track manager signs
function sprint_racer:game_logic/10/clone_sign_data

tag @s remove clickSign