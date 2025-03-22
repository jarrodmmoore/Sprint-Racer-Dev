tellraw @a[tag=!minChat] ["",{text:" "}]

data merge block 1581 89 451 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/defaults"}},{text:"RESTORE",bold:true,color:"black"},{text:"DEFAULTS",bold:true,color:"black"},{text:""}]},is_waxed:1b}
data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/items"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/items"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/tracks"}},{text:"TRACKS",bold:true,color:"black"},{text:"[VOTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1581 89 448 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/gamemodes"}},{text:"GAMEMODES",bold:true,color:"black"},{text:"[RACE & BATTLE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/item_balancing"}},{text:"ITEM BALANCE",bold:true,color:"black"},{text:"[ON--TIME]",color:"dark_blue"},{text:""}]},is_waxed:1b}


tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optRnB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRace
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optBattle

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optVote
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optChoose
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRoulette
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optRandom

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoItems

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optBalance

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove choosingTrack

playsound minecraft:block.note_block.hat master @a
tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.restored_defaults",color:"green"}]

tag @s remove clickSign

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1

#CLEAR POINTS
function sprint_racer:game_logic/0/clear_points

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/sidebar/__index_main