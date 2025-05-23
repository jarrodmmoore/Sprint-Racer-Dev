#players can warp themselves back to the center by dropping map
execute as @a[scores={dropMap=1..}] at @s run function sprint_racer:worldmap/dropped_map
# ^ this command is additionally run by some sneaky repeating command blocks hidden at:
#2470 94 540
#

#race chest
function sprint_racer:worldmap/race/cycle

#race sort button
execute if score #rSortType value matches 0 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1
execute if score #rSortType value matches 1 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1
execute if score #rSortType value matches 2 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1
execute if score #rSortType value matches 3 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1
execute if score #rSortType value matches 4 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1
execute if score #rSortType value matches 5 run item replace block 2464 99 270 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.difficulty",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"yellow",italic:false}],custom_data={qsControl:1b,rSort:1b}] 1

#race filter button
execute if score #rFilterType value matches 0 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1
execute if score #rFilterType value matches 1 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1
execute if score #rFilterType value matches 2 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1
execute if score #rFilterType value matches 3 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1
execute if score #rFilterType value matches 4 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1
execute if score #rFilterType value matches 5 run item replace block 2464 99 270 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.novice_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.intermediate_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.expert_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.master_tracks",color:"yellow",italic:false}],custom_data={qsControl:1b,rFilter:1b}] 1

#handle clicks on the race sort/filter buttons
execute store result score #rSortClick value run clear @a white_dye[custom_data~{rSort:1b}]
execute if score #rSortClick value matches 1 run function sprint_racer:worldmap/race/press_sort_button
execute store result score #rFilterClick value run clear @a white_dye[custom_data~{rFilter:1b}]
execute if score #rFilterClick value matches 1 run function sprint_racer:worldmap/race/press_filter_button

#battle chest
function sprint_racer:worldmap/battle/cycle

#battle sort button
execute if score #bSortType value matches 0 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.size",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1
execute if score #bSortType value matches 1 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.size",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1
execute if score #bSortType value matches 2 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.size",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1
execute if score #bSortType value matches 3 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.size",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1
execute if score #bSortType value matches 4 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.size",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"gray",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1
execute if score #bSortType value matches 5 run item replace block 2464 99 264 container.25 with minecraft:white_dye[item_model="sr/inventory/quick_select_sort",custom_name={translate:"sr.lobby.quick_select.sort_by",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.date_added",color:"gray",italic:false},{translate:"sr.lobby.quick_select.size",color:"gray",italic:false},{translate:"sr.lobby.quick_select.alphabetical",color:"gray",italic:false},{translate:"sr.lobby.quick_select.recently_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.most_played",color:"gray",italic:false},{translate:"sr.lobby.quick_select.random_sort",color:"yellow",italic:false}],custom_data={qsControl:1b,bSort:1b}] 1

#battle filter button
execute if score #bFilterType value matches 0 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1
execute if score #bFilterType value matches 1 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1
execute if score #bFilterType value matches 2 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1
execute if score #bFilterType value matches 3 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1
execute if score #bFilterType value matches 4 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"yellow",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"gray",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1
execute if score #bFilterType value matches 5 run item replace block 2464 99 264 container.26 with minecraft:white_dye[item_model="sr/inventory/quick_select_filter",custom_name={translate:"sr.lobby.quick_select.filter",color:"white",bold:true,italic:false},lore=[{translate:"sr.lobby.quick_select.all",color:"gray",italic:false},{translate:"sr.lobby.quick_select.not_banned",color:"gray",italic:false},{translate:"sr.lobby.quick_select.tiny_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.small_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.medium_tracks",color:"gray",italic:false},{translate:"sr.lobby.quick_select.large_tracks",color:"yellow",italic:false}],custom_data={qsControl:1b,bFilter:1b}] 1

#handle clicks on the battle sort/filter button
execute store result score #bSortClick value run clear @a white_dye[custom_data~{bSort:1b}]
execute if score #bSortClick value matches 1 run function sprint_racer:worldmap/battle/press_sort_button
execute store result score #bFilterClick value run clear @a white_dye[custom_data~{bFilter:1b}]
execute if score #bFilterClick value matches 1 run function sprint_racer:worldmap/battle/press_filter_button

#handle track selection
execute as @a[x=2462,y=97,z=261,dx=13,dy=13,dz=13] run function sprint_racer:worldmap/check_for_track_select

#stuff to remember

#race chest
#c1 2464 99 271
#c2 2464 99 270

#battle chest
#c1 2464 99 265
#c2 2464 99 264

#rQuickCycle
#bQuickCycle

#tag=rSortSelect
#tag=bSortSelect

##rSortType
#0 = date added -- rNumber
#1 = difficulty -- rSortDifficulty
#2 = alphabetical -- rSortAlphabet
#3 = recently played --rSortRecent
#4 = most played -- rSortPopular
#5 = random sort -- rSortRandom
##bSortType
#0 = date added -- rNumber
#1 = size -- bSortSize
#2 = alphabetical -- bSortAlphabet
#3 = recently played -- bSortRecent
#4 = most played -- bSortPopular
#5 = random sort -- bSortRandom

##rFilterType
#0 = all
#1 = not banned
#2 = novice only
#3 = intermediate only
#4 = expert only
#5 = master only
##bFilterType
#0 = all
#1 = not banned
#2 = tiny size
#3 = small size
#4 = medium size
#5 = large size