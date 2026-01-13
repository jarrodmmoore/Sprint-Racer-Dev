tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:" "}]
tellraw @a ["",{text:"===\\/=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"red"}]

#name
tellraw @a ["",{translate:"sr.custom_track.track_name",color:"white",bold:true},{translate:"sr.custom_track.change_name",color:"light_purple",click_event:{action:"suggest_command",command:"/execute as @e[tag=focusT] run data merge entity @s {CustomName:{color:\"light_purple\",bold:false,text:\"TRACKNAME\"}}"},hover_event:{action:"show_text",value:"Rename track (replace \"TRACKNAME\")"}}]

#tagline (macro)
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_tagline_macro with storage sprint_racer:func_args

#coords
tellraw @a ["",{translate:"sr.custom_track.coordinates",color:"white",bold:true},{text:"x=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_x"},color:"white",bold:false},{text:", y=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_y"},color:"white",bold:false},{text:", z=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_z"},color:"white",bold:false},{text:"  "},{translate:"sr.custom_track.change_coordinates",color:"light_purple",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1023"},hover_event:{action:"show_text",value:"Set where your track is located within the world!"}}]

#ai?
execute if entity @e[tag=focusT,type=armor_stand,tag=!noAItrack] run tellraw @a ["",{translate:"sr.custom_track.supports_ai",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1024"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1025"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=noAItrack] run tellraw @a ["",{translate:"sr.custom_track.supports_ai",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1024"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1025"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]

#targets
execute if entity @e[tag=focusT,type=armor_stand] run tellraw @a ["",{translate:"sr.custom_track.time_attack_targets",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTTargets"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1026"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1027"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]

#size
execute if entity @e[tag=focusT,type=armor_stand,tag=trackTiny] run tellraw @a ["",{translate:"sr.custom_track.track_size",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1028"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1029"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.lobby.size_tiny",color:"blue",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackSmall] run tellraw @a ["",{translate:"sr.custom_track.track_size",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1028"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1029"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.lobby.size_small",color:"green",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackMedium] run tellraw @a ["",{translate:"sr.custom_track.track_size",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1028"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1029"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.lobby.size_medium",color:"aqua",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackLarge] run tellraw @a ["",{translate:"sr.custom_track.track_size",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1028"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1029"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.lobby.size_large",color:"red",bold:false}]

#custom functions
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_codepath_macro with storage sprint_racer:func_args

tellraw @a ["",{text:"[<<]",color:"dark_gray"},{text:"  "},{text:"p. 1/3",italic:true},{text:"  "},{text:"[>>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1014"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}}]
tellraw @a ["",{text:"===/\\=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"red"}]