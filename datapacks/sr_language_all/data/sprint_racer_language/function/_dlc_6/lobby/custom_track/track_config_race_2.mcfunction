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

#time
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=0..2999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_increase"},hover_event:{action:"show_text",value:"Increase"}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_decrease"},hover_event:{action:"show_text",value:"Decrease"}},{text:" "},{text:" "},{translate:"sr.custom_track.morning",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=3000..8999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_increase"},hover_event:{action:"show_text",value:"Increase"}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_decrease"},hover_event:{action:"show_text",value:"Decrease"}},{text:" "},{text:" "},{translate:"sr.custom_track.noon",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=9000..14999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_increase"},hover_event:{action:"show_text",value:"Increase"}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_decrease"},hover_event:{action:"show_text",value:"Decrease"}},{text:" "},{text:" "},{translate:"sr.custom_track.sunset",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=15000..20999}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_increase"},hover_event:{action:"show_text",value:"Increase"}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_decrease"},hover_event:{action:"show_text",value:"Decrease"}},{text:" "},{text:" "},{translate:"sr.custom_track.night",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTrackTime=21000..}] run tellraw @a ["",{translate:"sr.custom_track.time_of_day",color:"white",bold:true},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"customTrackTime"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_increase"},hover_event:{action:"show_text",value:"Increase"}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/time_decrease"},hover_event:{action:"show_text",value:"Decrease"}},{text:" "},{text:" "},{translate:"sr.custom_track.morning",color:"white",bold:false}]

#weather
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=1}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_previous"},hover_event:{action:"show_text",value:"Previous"}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_next"},hover_event:{action:"show_text",value:"Next"}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_clear",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=2}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_previous"},hover_event:{action:"show_text",value:"Previous"}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_next"},hover_event:{action:"show_text",value:"Next"}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_rain",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customTWeather=3}] run tellraw @a ["",{translate:"sr.custom_track.weather",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_previous"},hover_event:{action:"show_text",value:"Previous"}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/weather_next"},hover_event:{action:"show_text",value:"Next"}},{text:" "},{text:" "},{translate:"sr.custom_track.weather_thunder",color:"white",bold:false}]

#daylight cycle
execute if entity @e[tag=focusT,type=armor_stand,tag=!daylightCycle] run tellraw @a ["",{translate:"sr.custom_track.daylight_cycle",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"gray",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/day_cycle_enable"},hover_event:{action:"show_text",value:"On"}},{text:"  "},{translate:"sr.text_menu.off",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/day_cycle_disable"},hover_event:{action:"show_text",value:"Off"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=daylightCycle] run tellraw @a ["",{translate:"sr.custom_track.daylight_cycle",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/day_cycle_enable"},hover_event:{action:"show_text",value:"On"}},{text:"  "},{translate:"sr.text_menu.off",color:"gray",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/day_cycle_disable"},hover_event:{action:"show_text",value:"Off"}}]

#night vision
execute if entity @e[tag=focusT,type=armor_stand,tag=!nightVision] run tellraw @a ["",{translate:"sr.custom_track.night_vision",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"gray",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/night_vision_enable"},hover_event:{action:"show_text",value:"On"}},{text:"  "},{translate:"sr.text_menu.off",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/night_vision_disable"},hover_event:{action:"show_text",value:"Off"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=nightVision] run tellraw @a ["",{translate:"sr.custom_track.night_vision",color:"white",bold:true},{text:" "},{translate:"sr.text_menu.on",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/night_vision_enable"},hover_event:{action:"show_text",value:"On"}},{text:"  "},{translate:"sr.text_menu.off",color:"gray",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/night_vision_disable"},hover_event:{action:"show_text",value:"Off"}}]

#music
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_music_macro with storage sprint_racer:func_args

#start countdown
execute if entity @e[tag=focusT,type=armor_stand,scores={startType=..-1}] run tellraw @a ["",{translate:"sr.custom_track.start_countdown_type",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_previous"},hover_event:{action:"show_text",value:"Previous"}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_next"},hover_event:{action:"show_text",value:"Next"}},{text:"  "},{translate:"sr.custom_track.reset",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_default"},hover_event:{action:"show_text",value:"Reset to default"}},{text:" "},{text:" "},{translate:"sr.basic.off",color:"white",bold:false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={startType=0..}] run tellraw @a ["",{translate:"sr.custom_track.start_countdown_type",color:"white",bold:true},{text:" "},{text:"[<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_previous"},hover_event:{action:"show_text",value:"Previous"}},{text:" "},{text:"[>]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_next"},hover_event:{action:"show_text",value:"Next"}},{text:"  "},{translate:"sr.custom_track.reset",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/start_type_default"},hover_event:{action:"show_text",value:"Reset to default"}},{text:" "},{text:" "},{score:{name:"@e[limit=1,tag=focusT,type=armor_stand]",objective:"startType"},color:"white",bold:false}]

#preview image (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_preview_image_macro with storage sprint_racer:func_args

#overhead map (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_overhead_map_macro with storage sprint_racer:func_args

#kill plane (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_kill_plane_macro with storage sprint_racer:func_args

#export track?
tellraw @a ["",{translate:"sr.custom_track.export_track_settings",color:"light_purple",click_event:{action:"suggest_command",command::"/function sprint_racer:game_logic/10/storage/export_track {filename:\"trackname\"}"},hover_event:{action:"show_text",value:"Export track settings to saves/.../data (replace \"trackname\", must be all lower-case and no spaces)"}}]

tellraw @a ["",{text:"[<<]",color:"yellow",click_event:{action:"run_command",command:"/function sprint_racer:game_logic/10/custom_config/page_previous"},hover_event:{action:"show_text",value:"Next page"}},{text:"  "},{text:"p. 2/2",italic:true},{text:"  "},{text:"[>>]",color:"dark_gray"}]
tellraw @a ["",{text:"===/\\=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"aqua"}]