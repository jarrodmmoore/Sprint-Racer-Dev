#executed by @e[tag=focusT,type=armor_stand]
#with storage sprint_racer:custom_track_storage_$(id)

$execute if entity @s[tag=!useOverheadMap] run tellraw @a ["",{"translate":"sr.custom_track.overhead_map","color":"white","bold":true},{"text":" "},{"text":"#$(overhead_map)","color":"dark_gray"},{"text":"  "},{"translate":"sr.text_menu.on","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/generic_enable_macro {tag:\"useOverheadMap\",page:\"_2\"}"},"hoverEvent":{"action":"show_text","contents":"On"}},{"text":"  "},{"translate":"sr.text_menu.off","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/generic_disable_macro {tag:\"useOverheadMap\",page:\"_2\"}"},"hoverEvent":{"action":"show_text","contents":"Off"}},{"text":"  "},{"translate":"sr.custom_track.set","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/data modify storage sprint_racer:custom_track_storage_$(storage_id) overhead_map set value 10004"},"hoverEvent":{"action":"show_text","contents":"Set overhead map (replace \"10004\")"}}]
$execute if entity @s[tag=useOverheadMap] run tellraw @a ["",{"translate":"sr.custom_track.overhead_map","color":"white","bold":true},{"text":" "},{"text":"#$(overhead_map)"},{"text":"  "},{"translate":"sr.text_menu.on","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/generic_enable_macro {tag:\"useOverheadMap\",page:\"_2\"}"},"hoverEvent":{"action":"show_text","contents":"On"}},{"text":"  "},{"translate":"sr.text_menu.off","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/generic_disable_macro {tag:\"useOverheadMap\",page:\"_2\"}"},"hoverEvent":{"action":"show_text","contents":"Off"}},{"text":"  "},{"translate":"sr.custom_track.set","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/data modify storage sprint_racer:custom_track_storage_$(storage_id) overhead_map set value 10004"},"hoverEvent":{"action":"show_text","contents":"Set overhead map (replace \"10004\")"}}]