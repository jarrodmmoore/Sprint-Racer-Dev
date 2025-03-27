#on cycle zero: apply filters and sort
execute if score #bQuickCycle value matches 0 run function sprint_racer:worldmap/battle/apply_filter
execute if score #bQuickCycle value matches 0 run function sprint_racer:worldmap/battle/apply_sort

#find the armor stand with the lowest bSortValue that does NOT have the tag bSortSelect
scoreboard players set #bReturnTrack value -1
scoreboard players set #bFindLowest value 2147483647
execute as @e[type=armor_stand,tag=trackStandB,tag=!bSortSelect,scores={bSortValue=1..},sort=arbitrary] run function sprint_racer:worldmap/battle/check_for_lowest

#(hang on, I need to write this down...)
#/summon armor_stand 2464 95 271 {UUID:[I;999,999,999,2],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
#000003e7-0000-03e7-0000-03e700000002

#based on the ID of the lowest rSortValue track returned, set the item that will go in the desired slot.
item replace entity 000003e7-0000-03e7-0000-03e700000002 armor.head with air
execute if score #bReturnTrack value matches 1..10 run function sprint_racer:worldmap/battle/return_track_1_10
execute if score #bReturnTrack value matches 11..20 run function sprint_racer:worldmap/battle/return_track_11_20
execute if score #bReturnTrack value matches 21..30 run function sprint_racer:worldmap/battle/return_track_21_30
execute if score #bReturnTrack value matches 31..40 run function sprint_racer:worldmap/battle/return_track_31_40
execute if score #bReturnTrack value matches 41..50 run function sprint_racer:worldmap/battle/return_track_41_50

#selected track is kicked out of the search pool
execute as @e[type=armor_stand,tag=trackStandB,tag=!bSortSelect] if score @s rNumber = #bReturnTrack value run tag @s add bSortSelect

#now, based on the current cycle, put the item in the correct slot
execute if score #bQuickCycle value matches 0..9 run function sprint_racer:worldmap/battle/put_into_slot_0_9
execute if score #bQuickCycle value matches 10..19 run function sprint_racer:worldmap/battle/put_into_slot_10_19
execute if score #bQuickCycle value matches 20..29 run function sprint_racer:worldmap/battle/put_into_slot_20_29
execute if score #bQuickCycle value matches 30..39 run function sprint_racer:worldmap/battle/put_into_slot_30_39
execute if score #bQuickCycle value matches 40..49 run function sprint_racer:worldmap/battle/put_into_slot_40_49
execute if score #bQuickCycle value matches 50.. run function sprint_racer:worldmap/battle/put_into_slot_50_

#go to next square or start over after the end
scoreboard players add #bQuickCycle value 1
execute if score #bQuickCycle value matches 52 run scoreboard players set #bQuickCycle value 0