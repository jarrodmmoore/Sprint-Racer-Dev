tellraw @s ["",{text:"\n==\\/== DEV MENU ==\\/==",color:"#6666FF",bold:true}]
tellraw @s ["",{text:"[gameplay stuff]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1000"},hover_event:{action:"show_text",value:"gameplay stuff"}}]
tellraw @s ["",{text:"[lobby stuff]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1001"},hover_event:{action:"show_text",value:"lobby stuff"}}]
tellraw @s ["",{text:"[game options]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1002"},hover_event:{action:"show_text",value:"game options"}}]
tellraw @s ["",{text:"[items]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1003"},hover_event:{action:"show_text",value:"Items"}}]
tellraw @s ["",{text:"[AI stuff]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1004"},hover_event:{action:"show_text",value:"AI stuff"}}]
tellraw @s ["",{text:"[node stuff]",color:"aqua",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1005"},hover_event:{action:"show_text",value:"node stuff"}}]


#player needs to be in creative mode if they manually run this dev function
gamemode creative @s[type=player]