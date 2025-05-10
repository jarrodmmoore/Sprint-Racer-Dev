tellraw @a[tag=!minChat] ["",{text:" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optBattle] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 5

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optVote,tag=!optRoulette] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[RANDOM]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRandom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optVote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRoulette
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optInOrder
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.track_selection_random",color:"green"},{text:" "},{text:"[?]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.random",color:"yellow"}]}}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run function sprint_racer_language:lobby/reset_lobby
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optRandom,tag=!optInOrder] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[IN ORDER]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optInOrder
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optVote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRoulette
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRandom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.track_selection_in_order",color:"green"},{text:" "},{text:"[?]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.in_order",color:"yellow"}]}}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run function sprint_racer:game_logic/0/update_round_display
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optRandom,tag=optInOrder] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[CHOOSE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optChoose
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optInOrder
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optVote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRoulette
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRandom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.track_selection_player_choice",color:"green"},{text:" "},{text:"[?]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.choose",color:"yellow"}]}}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run clear @a written_book[custom_data={notitle:1b}]
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run function sprint_racer:game_logic/0/update_round_display
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optChoose] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[ROULETTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optVote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRoulette
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRandom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optInOrder
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.track_selection_roulette",color:"green"},{text:" "},{text:"[?]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.roulette",color:"yellow"}]}}]
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optVote,tag=optRoulette] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[VOTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRandom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optInOrder
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optVote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRoulette
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.track_selection_vote",color:"green"},{text:" "},{text:"[?]",color:"yellow",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.vote",color:"yellow"}]}}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

#missing tags, give new one
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] add optVote
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA

#reset the "in order" sequence
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackSequenceR 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackSequenceB 0

tag @s remove clickSign

function sprint_racer:game_logic/0/sidebar/__index_main

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove choosingTrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB