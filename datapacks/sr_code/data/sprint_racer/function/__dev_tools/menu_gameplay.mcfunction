tellraw @s ["",{text:"\ngameplay",color:"#005544",bold:true}]
tellraw @s ["",{text:"[no time limit]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining 999999999"},hover_event:{action:"show_text",value:"no time limit"}}]
tellraw @s ["",{text:"[end time limit]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining 1"},hover_event:{action:"show_text",value:"end time limit"}}]
tellraw @s ["",{text:"[no time limit - gauntlet]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining2 999999999"},hover_event:{action:"show_text",value:"no time limit (gauntlet track)"}}]
tellraw @s ["",{text:"[end time limit - gauntlet]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining2 1"},hover_event:{action:"show_text",value:"end time limit (gauntlet track)"}}]
tellraw @s ["",{text:"[enable halftick]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add halftick"},hover_event:{action:"show_text",value:"enable halftick"}}]
tellraw @s ["",{text:"[disable halftick]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove halftick"},hover_event:{action:"show_text",value:"disable halftick"}}]
tellraw @s ["",{text:"[restart]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/function sprint_racer_language:_dlc_2/mid_game_vote/pass_restart"},hover_event:{action:"show_text",value:"restart"}}]
tellraw @s ["",{text:"[back to lobby]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/function sprint_racer_language:_dlc_2/mid_game_vote/pass_lobby"},hover_event:{action:"show_text",value:"back to lobby"}}]

tellraw @s ["",{text:"[Back]",color:"#FF7777",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1027"},hover_event:{action:"show_text",value:"Back"}}]


#player needs to be in creative mode if they manually run this dev function
gamemode creative @s[type=player]