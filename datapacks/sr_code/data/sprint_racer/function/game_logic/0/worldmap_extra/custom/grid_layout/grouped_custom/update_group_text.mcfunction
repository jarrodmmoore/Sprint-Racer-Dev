#re-summon text_display in a way that's friendly to old worlds
kill @e[type=text_display,tag=trackGridCustomText,distance=..6]
summon text_display ~ ~ ~ {Tags:["trackGridCustomText"],billboard:"fixed",alignment:"center",transformation:{left_rotation:[0f,-1f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

#look up the current group
#name
$data modify storage sprint_racer:custom_track_list group_string set from storage sprint_racer:custom_track_list groups[$(track_group)][0]
#update count for number of entries in this group
$execute store result score #trackGridEnd value run data get storage sprint_racer:custom_track_list groups[$(track_group)]
scoreboard players remove #trackGridEnd value 1

#figure out what page we're on (#test)
scoreboard players set #math2 value 18
scoreboard players operation #test value = #trackGridStartCustom value
scoreboard players remove #test value 1
scoreboard players operation #test value /= #math2 value
scoreboard players add #test value 1

#find max page number (#test2)
scoreboard players operation #test2 value = #trackGridEnd value
scoreboard players remove #test2 value 1
scoreboard players operation #test2 value /= #math2 value
scoreboard players add #test2 value 1

#apply the string
execute if score #trackGridEnd value matches ..18 as @e[type=text_display,tag=trackGridCustomText,distance=..2] run data modify entity @s text set value [{nbt:"group_string",storage:"sprint_racer:custom_track_list",interpret:false,underlined:true,bold:true}]
execute if score #trackGridEnd value matches 19.. as @e[type=text_display,tag=trackGridCustomText,distance=..2] run data modify entity @s text set value [{nbt:"group_string",storage:"sprint_racer:custom_track_list",interpret:false,underlined:true,bold:true},{text:" (",underlined:true,bold:true},{score:{name:"#test",objective:value},underlined:true,bold:true},{text:"/",underlined:true,bold:true},{score:{name:"#test2",objective:value},underlined:true,bold:true},{text:")",underlined:true,bold:true}]
