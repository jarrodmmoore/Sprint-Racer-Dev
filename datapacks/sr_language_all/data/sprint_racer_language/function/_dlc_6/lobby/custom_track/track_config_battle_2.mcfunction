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

#time
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=0..2999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.morning",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=3000..8999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.noon",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=9000..14999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.sunset",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=15000..20999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.night",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=21000..}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.morning",color:"white",bold:false}]

#weather
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=1}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1003"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1004"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_clear",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=2}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1003"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1004"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_rain",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=3}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1003"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1004"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_thunder",color:"white",bold:false}]

#daylight cycle
execute if entity @e[tag=focusT,type=armor_stand,tag=!daylightCycle] run tellraw @a ["",{translate:"sr.custom_track.daylight_cycle",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1005"},hover_event:{action:"show_text",value:[{translate:"sr.basic.on"}]}},{text:"  "},{translate:"sr.text_menu.off",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1006"},hover_event:{action:"show_text",value:[{translate:"sr.basic.off"}]}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=daylightCycle] run tellraw @a ["",{translate:"sr.custom_track.daylight_cycle",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1005"},hover_event:{action:"show_text",value:[{translate:"sr.basic.on"}]}},{text:"  "},{translate:"sr.text_menu.off",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1006"},hover_event:{action:"show_text",value:[{translate:"sr.basic.off"}]}}]

#night vision
execute if entity @e[tag=focusT,type=armor_stand,tag=!nightVision] run tellraw @a ["",{translate:"sr.custom_track.night_vision",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1007"},hover_event:{action:"show_text",value:[{translate:"sr.basic.on"}]}},{text:"  "},{translate:"sr.text_menu.off",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1008"},hover_event:{action:"show_text",value:[{translate:"sr.basic.off"}]}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=nightVision] run tellraw @a ["",{translate:"sr.custom_track.night_vision",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1007"},hover_event:{action:"show_text",value:[{translate:"sr.basic.on"}]}},{text:"  "},{translate:"sr.text_menu.off",color:"gray",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1008"},hover_event:{action:"show_text",value:[{translate:"sr.basic.off"}]}}]

#music
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_music_macro with storage sprint_racer:func_args

#start countdown
execute if entity @e[tag=focusT,type=armor_stand,scores={startType=..-1}] run tellraw @a ["",{translate:"sr.custom_track.start_countdown_type",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1009"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1010"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:"  "},{translate:"sr.custom_track.reset",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1011"},hover_event:{action:"show_text",value:"Reset to default"}},{text:" "},{text:" "},{translate:"sr.basic.off",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={startType=0..}] run tellraw @a ["",{translate:"sr.custom_track.start_countdown_type",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1009"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1010"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}},{text:"  "},{translate:"sr.custom_track.reset",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1011"},hover_event:{action:"show_text",value:"Reset to default"}},{text:" "},{text:" "},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"startType"},color:"white",bold:false}]

#preview image (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_preview_image_macro with storage sprint_racer:func_args

#overhead map (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_overhead_map_macro with storage sprint_racer:func_args

#kill plane (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_kill_plane_macro with storage sprint_racer:func_args

tellraw @a ["",{text:"[<<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1012"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:"  "},{text:"p. 2/3",italic:true},{text:"  "},{text:"[>>]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1013"},hover_event:{action:"show_text",value:[{translate:"sr.basic.next"}]}}]
tellraw @a ["",{text:"===/\\=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"red"}]