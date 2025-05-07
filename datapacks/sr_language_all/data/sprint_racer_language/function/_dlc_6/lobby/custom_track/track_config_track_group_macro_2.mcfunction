#executed by @e[tag=focusT,type=armor_stand]
#with storage sprint_racer:custom_track_storage_$(id)

$tellraw @a ["",{text:"  "},{translate:"sr.custom_track.track_select.track_group",color:"white",bold:true},{text:" "},{nbt:"track_group",storage:"sprint_racer:custom_track_storage_$(id)",interpret:false},{text:"  "},{translate:"sr.custom_track.set",color:"light_purple",click_event:{action:"suggest_command",command:"/function sprint_racer:game_logic/10/custom_config/set_track_group_macro {customtrackuid:$(storage_id),track_group:\"Uncategorized\"}"},hover_event:{action:"show_text",value:"Set track group (no spaces)"}}]
