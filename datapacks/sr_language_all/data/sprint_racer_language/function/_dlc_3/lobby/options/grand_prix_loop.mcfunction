tellraw @a[tag=!minChat] ["",{text:" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=!grandprixloop] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1583 69 432 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1017"}},{text:"LOOP?",bold:true,color:"black"},{text:"[YES]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] add grandprixloop
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.grand_prix_loop_on",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=grandprixloop] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1583 69 432 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1017"}},{text:"LOOP?",bold:true,color:"black"},{text:"[NO]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] remove grandprixloop
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.grand_prix_loop_off",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign