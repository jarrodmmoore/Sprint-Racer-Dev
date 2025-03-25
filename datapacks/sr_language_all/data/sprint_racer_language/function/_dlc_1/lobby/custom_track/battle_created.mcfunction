tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.new_custom_track_1",color:"white"},{translate:"sr.lobby.custom_battle_mode",color:"red"},{translate:"sr.lobby.new_custom_track_2",color:"white"},{selector:"@e[limit=1,tag=imnew]",bold:false}]
execute as @a at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ 10000 ~ 10000 1.7

tellraw @a ["",{translate:"sr.lobby.click_to_rename_track",color:"light_purple",click_event:{action:"suggest_command",command:"/execute as @e[tag=focusT] run data merge entity @s {CustomName:{color:\"light_purple\",text:\"TRACKNAME\"}}"},hover_event:{action:"show_text",value:["",{text:"Rename Track (replace \"TRACKNAME\")"}]}}]
tellraw @a ["",{text:" "}]