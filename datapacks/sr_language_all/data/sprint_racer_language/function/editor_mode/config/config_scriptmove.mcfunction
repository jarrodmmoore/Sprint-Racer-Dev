scoreboard players add @s scriptMove 1
scoreboard players set @s[scores={scriptMove=5..}] scriptMove 1

tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{text:"==\\/==",color:"light_purple",bold:true},{text:" "},{translate:"sr.editor.config.scriptmove.name",color:"light_purple",bold:true},{text:" "},{text:"==\\/==",color:"light_purple",bold:true}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.number",color:"white",bold:true},{score:{name:"@s",objective:"scriptMove"}},{text:"  "},{translate:"sr.editor.config.scriptmove.drop_to_cycle"}]
tellraw @s[tag=scriptStart,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.start",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1267"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1268"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=!scriptStart,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.start",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1267"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1268"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=requireBoost,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.require_boost",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1269"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1270"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=!requireBoost,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.require_boost",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1269"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1270"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=scriptEnd,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.end",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1271"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1272"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=!scriptEnd,scores={dropEndermiteEgg=1..}] ["",{translate:"sr.editor.config.scriptmove.end",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1271"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1272"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]


scoreboard players reset @s dropEndermiteEgg