#race or battle?
execute store result score #test value run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=1}]

#load text before showing it
execute as @e[tag=focusT,type=armor_stand,limit=1] run function sprint_racer:game_logic/10/custom_config/settings_overrides/_load_text



#ui

execute if score #test value matches 1 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{text:"===\\/=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"aqua"}]
execute if score #test value matches 0 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{text:"===\\/=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===\\/===",color:"red"}]
tellraw @a {translate:"sr.custom_track.settings_overrides",italic:true}

#items enabled?
tellraw @a [{nbt:"items",storage:"sprint_racer:custom_track_text",interpret:true}]

#item bans
tellraw @a ["  ",{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.item_bans"}],click_event:{action:"run_command",command:"/trigger tTrackEditor set 1141"},hover_event:{action:"show_text",value:{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.item_bans"}]}}}]

#item rule
tellraw @a [{nbt:"item_rule",storage:"sprint_racer:custom_track_text",interpret:true}]

#teams mode
tellraw @a [{nbt:"teams",storage:"sprint_racer:custom_track_text",interpret:true}]

#nearby players invisibility
tellraw @a [{nbt:"nearby_invisibility",storage:"sprint_racer:custom_track_text",interpret:true}]

#(race only) absorption at race start
execute if score #test value matches 1 run tellraw @a [{nbt:"absorption",storage:"sprint_racer:custom_track_text",interpret:true}]

#(battle only) player locator bar
execute if score #test value matches 0 run tellraw @a [{nbt:"locator_bar",storage:"sprint_racer:custom_track_text",interpret:true}]

#return to page 2
tellraw @a [{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.back"}],click_event:{action:"run_command",command:"/trigger tTrackEditor set 1142"},hover_event:{action:"show_text",value:{translate:"sr.basic.bracket_button",color:"light_purple",with:[{translate:"sr.custom_track.back"}]}}}]

execute if score #test value matches 1 run tellraw @a ["",{text:"===/\\=== ",color:"aqua"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"aqua"}]
execute if score #test value matches 0 run tellraw @a ["",{text:"===/\\=== ",color:"red"},{selector:"@e[limit=1,tag=focusT,type=armor_stand]"},{text:" ===/\\===",color:"red"}]
