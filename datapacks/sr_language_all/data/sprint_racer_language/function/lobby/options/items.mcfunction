tellraw @a[tag=!minChat] ["",{text:" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA

#on
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optNoItems] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsR
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.items_all_gamemodes",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

#race only
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optItems] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[RACE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[RACE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optItemsR
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.items_race_only",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

#battle only
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optItemsR] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[BATTLE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[BATTLE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optItemsB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsR
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.items_battle_only",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

#off
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=optItemsB] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optNoItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItems
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsR
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optItemsB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.items_always_off",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

#update custom track manager signs
function sprint_racer:game_logic/10/clone_sign_data

#missing tags, give new one
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] add optItems
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign