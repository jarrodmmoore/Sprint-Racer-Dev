#customLapOffset
#customLapType
#customLapMult
#cl_trigger

scoreboard players operation @s customLapOffset = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapOffset
scoreboard players operation @s customLapType = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapType
scoreboard players operation @s customLapMult = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapMult

tellraw @s ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s ["",{text:"==\\/==",color:"blue",bold:true},{text:" "},{translate:"sr.cheats.custom_lap_modifier",color:"blue",bold:true},{text:" "},{text:"==\\/==",color:"blue",bold:true}]

tellraw @s[scores={customLapType=1}] ["",{translate:"sr.cheats.custom_lap_modifier.type",bold:true},{translate:"sr.cheats.custom_lap_modifier.type_offset",color:"yellow",click_event:{action:"run_command",command:"/trigger cl_trigger set 1"},hover_event:{action:"show_text",value:"Offset"}},{text:"  "},{translate:"sr.cheats.custom_lap_modifier.type_multiplier",color:"gray",click_event:{action:"run_command",command:"/trigger cl_trigger set 2"},hover_event:{action:"show_text",value:"Multiplier"}}]
tellraw @s[scores={customLapType=2}] ["",{translate:"sr.cheats.custom_lap_modifier.type",bold:true},{translate:"sr.cheats.custom_lap_modifier.type_offset",color:"gray",click_event:{action:"run_command",command:"/trigger cl_trigger set 1"},hover_event:{action:"show_text",value:"Offset"}},{text:"  "},{translate:"sr.cheats.custom_lap_modifier.type_multiplier",color:"yellow",click_event:{action:"run_command",command:"/trigger cl_trigger set 2"},hover_event:{action:"show_text",value:"Multiplier"}}]

tellraw @s[scores={customLapType=1,customLapOffset=0..}] ["",{translate:"sr.cheats.custom_lap_modifier.offset",bold:true},{text:"+"},{score:{name:"@s",objective:"customLapOffset"}},{text:" "},{text:" "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger cl_trigger set 10"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger cl_trigger set 11"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[scores={customLapType=2,customLapOffset=0..}] ["",{translate:"sr.cheats.custom_lap_modifier.offset",bold:true,color:"dark_gray"},{text:"+",color:"dark_gray"},{score:{name:"@s",objective:"customLapOffset"},color:"dark_gray"}]
tellraw @s[scores={customLapType=1,customLapOffset=..-1}] ["",{translate:"sr.cheats.custom_lap_modifier.offset",bold:true},{score:{name:"@s",objective:"customLapOffset"}},{text:" "},{text:" "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger cl_trigger set 10"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger cl_trigger set 11"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[scores={customLapType=2,customLapOffset=..-1}] ["",{translate:"sr.cheats.custom_lap_modifier.offset",bold:true,color:"dark_gray"},{score:{name:"@s",objective:"customLapOffset"},color:"dark_gray"}]

tellraw @s[scores={customLapType=2}] ["",{translate:"sr.cheats.custom_lap_modifier.multiplier",bold:true},{score:{name:"@s",objective:"customLapMult"}},{text:"% "},{text:" "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger cl_trigger set 20"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger cl_trigger set 21"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[scores={customLapType=1}] ["",{translate:"sr.cheats.custom_lap_modifier.multiplier",bold:true,color:"dark_gray"},{score:{name:"@s",objective:"customLapMult"},color:"dark_gray"},{text:"% ",color:"dark_gray"}]

tellraw @s ["",{text:"==/\\==",color:"blue",bold:true},{text:" "},{translate:"sr.cheats.custom_lap_modifier",color:"blue",bold:true},{text:" "},{text:"==/\\==",color:"blue",bold:true}]

#sound
execute at @s run playsound minecraft:sr_hitsounds/hit3 master @s ~ ~ ~ 1 1.6

scoreboard players enable @s cl_trigger