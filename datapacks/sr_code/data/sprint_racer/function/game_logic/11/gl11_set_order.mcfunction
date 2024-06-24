bossbar set freeroam players @a

#give proper tags to players and spectators
tag @a[tag=!forcespectate,tag=!afk] add playing
team join player @a[team=!player,tag=!forcespectate,tag=!afk]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]
tag @a[tag=afk] remove playing
team join spectator @a[team=!spectator,tag=afk]
tag @a[x=1550,y=108,z=406,distance=..150] add lobby
execute as @a[tag=afk] at @s run function sprint_racer_language:afk_tag

scoreboard players remove @a[scores={subtitleDelay=1..}] subtitleDelay 1
tag @a[tag=noInventory] remove noInventory

#heals for all
effect give @a[scores={hp=..19}] instant_health 1 10 true

#night vision for all
effect give @a night_vision 15 5 true

#go fast
effect give @a[scores={coord_y=..960000}] speed 1 20 true

#don't afk players who are reading...
execute as @a[scores={afkTime=500..599}] if items entity @s weapon.mainhand written_book run scoreboard players remove @s afkTime 2

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,gamemode=spectator] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump


#give tips on how to choose track
scoreboard players set @a actionbarState 1
execute as @a[scores={actionbarState=1}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] unless items entity @s weapon.mainhand filled_map[custom_data~{wmcustommap:1b}] run function sprint_racer_language:lobby/actionbar_control_tips/choose
execute as @a[scores={actionbarState=1}] if items entity @s weapon.mainhand filled_map[custom_data~{wmcustommap:1b}] run function sprint_racer_language:_dlc_1/lobby/actionbar_control_tips/worldmap_custom_track_name
execute as @a unless items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] run title @s actionbar [""]


#make sure players are in the area
effect give @a[x=2471,y=110,z=267,distance=350..] blindness 2 10 true
clear @a[x=2471,y=110,z=267,distance=350..]
scoreboard players reset @a[x=2471,y=110,z=267,distance=350..] enderman
execute as @a[x=2471,y=110,z=267,distance=350..] positioned 2472 103 268 positioned ~-.5 ~ ~-.5 rotated 0 0 run function sprint_racer:varied_teleport

#gates and quick select menu
function sprint_racer:worldmap/misc_worldmap_stuff

#make sure players have the proper inventory stuff
tag @a[tag=playerVote1] remove playerVote1
tag @e[tag=hasExit] remove hasExit
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:structure_void",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] structure_void
execute if entity @e[type=armor_stand,tag=trackminimap] run function sprint_racer_language:_dlc_3/grand_prix/choose_track_exit_item

tag @a[tag=hasMap1] remove hasMap1
tag @a[nbt={Inventory:[{Slot:3b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{map_random1:1b}}}]}] add hasMap1
clear @a[tag=!hasMap1] filled_map[custom_data~{map_random1:1b}]
function sprint_racer_language:_dlc_3/grand_prix/random_track_item_1

tag @a[tag=hasMap2] remove hasMap2
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{map_random2:1b}}}]}] add hasMap2
clear @a[tag=!hasMap2] filled_map[custom_data~{map_random2:1b}]
function sprint_racer_language:_dlc_3/grand_prix/random_track_item_2

tag @a[tag=hasMap3] remove hasMap3
tag @a[nbt={Inventory:[{Slot:5b,id:"minecraft:filled_map",components:{"minecraft:custom_data":{map_random3:1b}}}]}] add hasMap3
clear @a[tag=!hasMap3] filled_map[custom_data~{map_random3:1b}]
function sprint_racer_language:_dlc_3/grand_prix/random_track_item_3

tag @a[tag=hasTNT] remove hasTNT
tag @a[nbt={Inventory:[{Slot:7b,id:"minecraft:tnt",components:{"minecraft:custom_data":{gp_undo:1b}}}]}] add hasTNT
clear @a[tag=!hasTNT] tnt[custom_data~{gp_undo:1b}]
function sprint_racer_language:_dlc_3/grand_prix/undo_item


execute as @a[sort=random,limit=5,gamemode=!creative] at @s run function sprint_racer:game_logic/0/find_nearest_track

#reload custom track selector if something was modified in the custom track manager
execute if entity @s[tag=wmCustomReload] if block 2480 98 266 air if block 2485 106 269 air if entity @e[tag=wmCustomStand] run function sprint_racer:game_logic/0/worldmap_custom_reload

#subtitle thing
function sprint_racer_language:_dlc_3/grand_prix/round_number_subtitle

#choose track
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] at @s run function sprint_racer:game_logic/11/click_map

#back to lobby
execute if items entity @a[scores={carrotInput=1..}] weapon.mainhand structure_void[custom_data~{exit:1b}] run function sprint_racer:game_logic/11/back_to_menu