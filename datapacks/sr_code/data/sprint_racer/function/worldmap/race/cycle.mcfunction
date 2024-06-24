#on cycle zero: apply filters and sort
execute if score #rQuickCycle value matches 0 run function sprint_racer:worldmap/race/apply_filter
execute if score #rQuickCycle value matches 0 run function sprint_racer:worldmap/race/apply_sort

#find the armor stand with the lowest rSortValue that does NOT have the tag rSortSelect
scoreboard players set #rReturnTrack value -1
scoreboard players set #rFindLowest value 2147483647
execute as @e[type=armor_stand,tag=trackStandR,tag=!rSortSelect,scores={rSortValue=1..},sort=arbitrary] run function sprint_racer:worldmap/race/check_for_lowest

#(hang on, I need to write this down...)
#/summon armor_stand 2464 95 271 {UUID:[I;999,999,999,1],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
#000003e7-0000-03e7-0000-03e700000001
#{ArmorItems:[{},{},{},{id:"minecraft:blue_dye",Count:1b,tag:{CustomModelData:1000001}}]}

#based on the ID of the lowest rSortValue track returned, set the item that will go in the desired slot.
execute unless score #rReturnTrack value matches 1..50 run data merge entity 000003e7-0000-03e7-0000-03e700000001 {ArmorItems:[{},{},{},{}]}
execute if score #rReturnTrack value matches 1..10 run function sprint_racer:worldmap/race/return_track_1_10
execute if score #rReturnTrack value matches 11..20 run function sprint_racer:worldmap/race/return_track_11_20
execute if score #rReturnTrack value matches 21..30 run function sprint_racer:worldmap/race/return_track_21_30
execute if score #rReturnTrack value matches 31..40 run function sprint_racer:worldmap/race/return_track_31_40
execute if score #rReturnTrack value matches 41..50 run function sprint_racer:worldmap/race/return_track_41_50

#selected track is kicked out of the search pool
execute as @e[type=armor_stand,tag=trackStandR,tag=!rSortSelect] if score @s rNumber = #rReturnTrack value run tag @s add rSortSelect

#now, based on the current cycle, put the item in the correct slot
execute if score #rQuickCycle value matches 0..9 run function sprint_racer:worldmap/race/put_into_slot_0_9
execute if score #rQuickCycle value matches 10..19 run function sprint_racer:worldmap/race/put_into_slot_10_19
execute if score #rQuickCycle value matches 20..29 run function sprint_racer:worldmap/race/put_into_slot_20_29
execute if score #rQuickCycle value matches 30..39 run function sprint_racer:worldmap/race/put_into_slot_30_39
execute if score #rQuickCycle value matches 40..49 run function sprint_racer:worldmap/race/put_into_slot_40_49
execute if score #rQuickCycle value matches 50.. run function sprint_racer:worldmap/race/put_into_slot_50_

#go to next square or start over after the end
scoreboard players add #rQuickCycle value 1
execute if score #rQuickCycle value matches 52 run scoreboard players set #rQuickCycle value 0