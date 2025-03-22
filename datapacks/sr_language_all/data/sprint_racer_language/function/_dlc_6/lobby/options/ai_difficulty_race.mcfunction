tellraw @a[tag=!minChat] ["",{text:" "}]

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optRAIdiff 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=4..}] optRAIdiff -1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=..-2}] optRAIdiff 2

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=-1}] run data merge block 1613 88 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_race"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[ADAPTIVE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=0}] run data merge block 1613 88 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_race"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[VERY EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=1}] run data merge block 1613 88 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_race"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=2}] run data merge block 1613 88 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_race"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[NORMAL]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=3}] run data merge block 1613 88 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty_race"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"[HARD]",color:"dark_blue"},{text:""}]},is_waxed:1b}

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=-1}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_difficulty_auto",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=0}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_difficulty_very_easy",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=1}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_difficulty_easy",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=2}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_difficulty_normal",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optRAIdiff=3}] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.race_ai_difficulty_hard",color:"green"}]
playsound minecraft:block.note_block.hat master @a

tag @s remove clickSign