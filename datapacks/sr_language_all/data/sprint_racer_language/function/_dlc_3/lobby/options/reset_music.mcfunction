tellraw @a[tag=!minChat] ["",{text:" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] allowInvis 0

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=!noMusicReset] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1609 80 364 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1020"}},{text:"RESET MUSIC",bold:true,color:"black"},{text:"ON DEATH?",bold:true,color:"black"},{text:"[NO]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noMusicReset
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.music_reset_on_death_off",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=noMusicReset] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1609 80 364 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1020"}},{text:"RESET MUSIC",bold:true,color:"black"},{text:"ON DEATH?",bold:true,color:"black"},{text:"[NO]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noMusicReset
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.music_reset_on_death_on",color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign