tellraw @a[tag=!minChat] ["",{text:" "}]

#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=BAIautocount] optBAIcount 0
#tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=BAIautocount] remove BAIautocount

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIcount 1
#tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=10..}] add BAIautocount
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=10..}] optBAIcount 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=1}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x1]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=2}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x2]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=3}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x3]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=4}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x4]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=5}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x5]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=6}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x6]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=7}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x7]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=8}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x8]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=9}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x9]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=BAIautocount] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[xAUTO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=realms] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_count",color:"green"},{score:{name:"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]",objective:"optBAIcount"},color:"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!realms] run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.battle_ai_count",color:"green"},{score:{name:"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]",objective:"optBAIcount"},color:"green"},{text:" "},{text:" "},{text:"[!]",color:"red",bold:true,hover_event:{action:"show_text",value:[{translate:"sr.lobby.info.ai_performance_warning",color:"red"}]}}]

playsound minecraft:block.note_block.hat master @a

function sprint_racer:game_logic/0/props/update_jail_zombies

#update custom track manager signs
function sprint_racer:game_logic/10/clone_sign_data

tag @s remove clickSign