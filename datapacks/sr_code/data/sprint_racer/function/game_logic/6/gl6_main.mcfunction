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

#no music playing? start a new music track
execute unless entity @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=currentBGM] run function sprint_racer:game_logic/0/restart_music

#execute if entity @s[scores={taLastChosen=1..}] run function sprint_racer:game_logic/6/try_to_find_previous_track
execute if entity @s[scores={taLastChosen=1..}] run function sprint_racer:game_logic/6/teleport_to_previous_track

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
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] barrier
execute if entity @e[type=armor_stand,tag=trackminimap] run function sprint_racer_language:lobby/choose_track_exit_item

tag @e[tag=hasTASign] remove hasTASign
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:jungle_sign",components:{"minecraft:custom_data":{TASign:1b}}}]}] unless score @s worldmapID matches 9999 run tag @s add hasTASign
clear @a[tag=!hasTASign,tag=playing] jungle_sign[custom_data~{TASign:1b}]
execute if entity @e[type=armor_stand,tag=trackminimap] as @a[tag=!hasTASign,gamemode=!creative] run function sprint_racer_language:_dlc_1/lobby/ta_sign

#inspect track times
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand jungle_sign[custom_data~{TASign:1b}] at @s run function sprint_racer:game_logic/6/click_jungle_sign

tag @a[tag=hasTAChest] remove hasTAChest
execute if entity @s[tag=!taNoItems] run tag @a[nbt={Inventory:[{Slot:7b,id:"minecraft:gold_ingot",components:{"minecraft:custom_data":{TAChest:1b,itemsON:1b}}}]}] add hasTAChest
execute if entity @s[tag=taNoItems] run tag @a[nbt={Inventory:[{Slot:7b,id:"minecraft:nether_brick",components:{"minecraft:custom_data":{TAChest:1b,itemsOFF:1b}}}]}] add hasTAChest
clear @a[tag=!hasTAChest,tag=playing] gold_ingot[custom_data~{TAChest:1b}]
clear @a[tag=!hasTAChest,tag=playing] nether_brick[custom_data~{TAChest:1b}]
execute as @a[tag=!hasTAChest,gamemode=!creative] run function sprint_racer_language:_dlc_1/lobby/ta_chest

#toggle items
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{TAChest:1b}] run function sprint_racer:game_logic/6/click_item_toggle



execute as @a[sort=random,limit=5,gamemode=!creative] at @s run function sprint_racer:game_logic/0/find_nearest_track
execute as @a run function sprint_racer:game_logic/6/ta_hotbar_display/_index

#reload custom track selector if something was modified in the custom track manager
execute if entity @s[tag=wmCustomReload] if loaded 2480 98 266 if entity @e[tag=wmCustomStand,type=armor_stand] run function sprint_racer:game_logic/0/worldmap_custom_reload

#choose track
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] at @s run function sprint_racer:game_logic/6/choose_track


#back to lobby
execute as @a[scores={carrotInput=1..}] if items entity @s weapon.mainhand barrier[custom_data~{exit:1b}] run function sprint_racer:game_logic/6/click_exit