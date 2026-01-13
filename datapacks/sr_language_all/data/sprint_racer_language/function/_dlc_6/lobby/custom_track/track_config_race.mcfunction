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
tellraw @a ["",{text:"===\\/=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"aqua"}]

#name
tellraw @a ["",{translate:"sr.custom_track.track_name",color:"white",bold:true},{translate:"sr.custom_track.change_name",color:"light_purple",click_event:{action:"suggest_command",command:"/execute as @e[tag=focusT] run data merge entity @s {CustomName:{color:\"light_purple\",bold:false,text:\"TRACKNAME\"}}"},hover_event:{action:"show_text",value:"Rename track (replace \"TRACKNAME\")"}}]

#tagline (macro)
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_tagline_macro with storage sprint_racer:func_args

#coords
tellraw @a ["",{translate:"sr.custom_track.coordinates",color:"white",bold:true},{text:"x=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_x"},color:"white",bold:false},{text:", y=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_y"},color:"white",bold:false},{text:", z=",color:"white"},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"coord_z"},color:"white",bold:false},{text:"  "},{translate:"sr.custom_track.change_coordinates",color:"light_purple",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1023"},hover_event:{action:"show_text",value:"Set where your track is located within the world."}}]

#laps
tellraw @a ["",{translate:"sr.custom_track.lap_count",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"lap"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1040"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1041"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]

#checkpoints
tellraw @a ["",{translate:"sr.custom_track.checkpoints_per_lap",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"check"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1042"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1043"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]

#ai?
execute if entity @e[tag=focusT,type=armor_stand,tag=!noAItrack] run tellraw @a ["",{translate:"sr.custom_track.supports_ai",color:"white",bold:true},{text:"  "},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1024"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1025"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=noAItrack] run tellraw @a ["",{translate:"sr.custom_track.supports_ai",color:"white",bold:true},{text:"  "},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1024"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1025"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]

#time limit
execute if entity @e[tag=focusT,type=armor_stand] run tellraw @a ["",{translate:"sr.custom_track.time_limit",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"timeRemaining"}},{text:" min  ",color:"white"},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1044"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1045"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:"  "},{translate:"sr.custom_track.reset",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1046"},hover_event:{action:"show_text",value:"Reset to default"}}]

#difficulty
execute if entity @e[tag=focusT,type=armor_stand,tag=trackNovice] run tellraw @a ["",{translate:"sr.custom_track.difficulty_rating",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1047"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1048"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.difficulty.novice",color:"green",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackIntermed] run tellraw @a ["",{translate:"sr.custom_track.difficulty_rating",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1047"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1048"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.difficulty.intermediate",color:"aqua",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackExpert] run tellraw @a ["",{translate:"sr.custom_track.difficulty_rating",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1047"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1048"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.difficulty.expert",color:"red",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackMaster] run tellraw @a ["",{translate:"sr.custom_track.difficulty_rating",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1047"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1048"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.difficulty.master",color:"light_purple",bold:false}]

#gauntlet?
execute if entity @e[tag=focusT,type=armor_stand,tag=!customGauntlet] run tellraw @a ["",{translate:"sr.custom_track.gauntlet_track",color:"white",bold:true},{text:"  "},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1049"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1050"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=customGauntlet] run tellraw @a ["",{translate:"sr.custom_track.gauntlet_track",color:"white",bold:true},{text:"  "},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1049"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1050"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]

#custom functions (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_codepath_macro with storage sprint_racer:func_args

tellraw @a ["",{text:"[<<]",color:"dark_gray"},{text:"  "},{text:"p. 1/3",italic:true},{text:"  "},{text:"[>>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1014"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}}]
tellraw @a ["",{text:"===/\\=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"aqua"}]