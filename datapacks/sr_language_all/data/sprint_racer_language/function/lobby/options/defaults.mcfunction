tellraw @a[tag=!minChat] ["",{text:" "}]

data merge block 1581 89 451 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1004"}},{text:"RESTORE",bold:true,color:"black"},{text:"DEFAULTS",bold:true,color:"black"},{text:""}]},is_waxed:1b}
data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[VOTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1581 89 448 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1007"}},{text:"GAMEMODES",bold:true,color:"black"},{text:"[RACE & BATTLE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1008"}},{text:"ITEM BALANCE",bold:true,color:"black"},{text:"[ON--TIME]",color:"dark_blue"},{text:""}]},is_waxed:1b}

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add optRnB
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optRace
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optBattle

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add optVote
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optChoose
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optRandom

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add optItems
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optItemsB
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove optNoItems

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add optBalance

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove choosingTrack

playsound minecraft:block.note_block.hat master @a
tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.restored_defaults",color:"green"}]

tag @s remove clickSign

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] roundNumber 1

#CLEAR POINTS
function sprint_racer:game_logic/0/clear_points

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/sidebar/__index_main