tellraw @a[tag=!minChat] ["",{text:" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 0

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,scores={allowInvis=2}] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/nearby_boots"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[NEVER]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set global allowInvis 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.nearby_invisibility_never",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,scores={allowInvis=0}] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/nearby_boots"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[ALWAYS]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set global allowInvis 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.nearby_invisibility_always",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,scores={allowInvis=1}] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/nearby_boots"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[5+ PLAYERS]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set global allowInvis 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.nearby_invisibility_5plus",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign