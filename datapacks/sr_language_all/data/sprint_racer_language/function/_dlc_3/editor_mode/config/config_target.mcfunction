tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropChickEgg=1..}] ["",{text:"==\\/==",color:"red",bold:true},{text:" "},{translate:"sr.editor.config.target.name",color:"red",bold:true},{text:" "},{text:"==\\/==",color:"red",bold:true}]
tellraw @s[tag=!targetImpossible,scores={dropChickEgg=1..}] ["",{translate:"sr.editor.config.target.possible_without_items",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1185"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1186"},hover_event:{action:"show_text",value:"No\n(will automatically break with Pickups: OFF)"}}]
tellraw @s[tag=targetImpossible,scores={dropChickEgg=1..}] ["",{translate:"sr.editor.config.target.possible_without_items",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1185"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1186"},hover_event:{action:"show_text",value:"No\n(will automatically break with Pickups: OFF)"}}]

scoreboard players reset @s dropChickEgg