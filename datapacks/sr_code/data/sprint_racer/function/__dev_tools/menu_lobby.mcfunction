tellraw @s ["",{text:"\nlobby",color:"#005544",bold:true}]
tellraw @s ["",{text:"[set to 5s]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer_language:lobby/options/set_5s"},hover_event:{action:"show_text",value:"set to 5s"}}]
tellraw @s ["",{text:"[resummon props]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/function sprint_racer:game_logic/0/props/summon_props"},hover_event:{action:"show_text",value:"resummon props"}}]
tellraw @s ["",{text:"[prepare map for release]",color:"#009988",bold:false,click_event:{action:"suggest_command",command:"/function sprint_racer:__dev_tools/prepare_map_to_ship"},hover_event:{action:"show_text",value:"prepare map to ship"}}]

tellraw @s ["",{text:"[down please]",color:"#FFFF44",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1001"},hover_event:{action:"show_text",value:"down please"}}]
tellraw @s ["",{text:"[Back]",color:"#FF7777",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1027"},hover_event:{action:"show_text",value:"Back"}}]