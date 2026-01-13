#load text before showing it
execute as @e[tag=focusT,type=armor_stand,limit=1] run function sprint_racer:game_logic/10/custom_config/settings_overrides/_load_bans_17_20



#ui

execute if score #test value matches 1 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{text:"===\\/=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"aqua"}]
execute if score #test value matches 0 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{text:"===\\/=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"red"}]
tellraw @a [{translate:"sr.custom_track.item_bans",italic:true}]

#items
tellraw @a [{nbt:"item_17",storage:"sprint_racer:custom_track_text",interpret:true}]
tellraw @a [{nbt:"item_18",storage:"sprint_racer:custom_track_text",interpret:true}]
tellraw @a [{nbt:"item_19",storage:"sprint_racer:custom_track_text",interpret:true}]
tellraw @a [{nbt:"item_20",storage:"sprint_racer:custom_track_text",interpret:true}]

#page select
tellraw @a ["",{text:"[<<]",color:"yellow",click_event:{action:"run_command",command:"/trigger tTrackEditor set 1239"},hover_event:{action:"show_text",value:[{translate:"sr.basic.previous"}]}},{text:"  "},{text:"p. 5/5",italic:true},{text:"  "},{text:"[>>]",color:"dark_gray"}]

#return to settings overrides
tellraw @a [{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.back"}],click_event:{action:"run_command",command:"/trigger tTrackEditor set 1125"},hover_event:{action:"show_text",value:{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.back"}]}}}]

execute if score #test value matches 1 run tellraw @a ["",{text:"===/\\=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"aqua"}]
execute if score #test value matches 0 run tellraw @a ["",{text:"===/\\=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"red"}]
