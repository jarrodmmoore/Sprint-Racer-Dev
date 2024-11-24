#keep players in the box
execute as @a at @s unless entity @s[x=1581,y=76,z=365,dx=12,dy=12,dz=12] run tp @s 1584 77 370 270 -12

#chosenTrack is always focusT
tag @e[tag=chosenTrack,type=armor_stand] remove chosenTrack
tag @e[tag=focusT,type=armor_stand,limit=1] add chosenTrack


#force adventure mode
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run gamemode adventure @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run gamemode adventure @a[tag=admin]

bossbar set freeroam players @a
effect give @a night_vision 15 1 true

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

scoreboard players remove @a[scores={afkTime=100..120}] afkTime 1

#heals for all
effect give @a[scores={hp=..19}] instant_health 1 10 true

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,gamemode=spectator] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump


#actionbar track display
function sprint_racer_language:_dlc_1/lobby/custom_track/actionbar_track_display

tag @s remove focusTrackBan
execute if entity @e[tag=focusT,type=armor_stand,tag=rtBlacklist] run tag @s add focusTrackBan
execute if entity @e[tag=focusT,type=armor_stand,tag=btBlacklist] run tag @s add focusTrackBan

#show if banned or not with text
execute if entity @e[tag=focusT,type=armor_stand] if entity @s[tag=!focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_indicate_allowed
execute if entity @e[tag=focusT,type=armor_stand] if entity @s[tag=focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_indicate_banned
execute unless entity @e[tag=focusT,type=armor_stand] run execute as @e[tag=trackStatus] run data merge entity @s {CustomName:'{"text":"...","color":"white","bold":false}',CustomNameVisible:0b}

#update difficulty display (unless custom preview is being used)
#race
execute if entity @s[scores={tvPoolMode=1}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackNovice] run function sprint_racer:game_logic/10/update_display/race_novice
execute if entity @s[scores={tvPoolMode=1}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackIntermed] run function sprint_racer:game_logic/10/update_display/race_intermediate
execute if entity @s[scores={tvPoolMode=1}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackExpert] run function sprint_racer:game_logic/10/update_display/race_expert
execute if entity @s[scores={tvPoolMode=1}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackMaster] run function sprint_racer:game_logic/10/update_display/race_master
#battle
execute if entity @s[scores={tvPoolMode=2}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackTiny] run function sprint_racer:game_logic/10/update_display/battle_tiny
execute if entity @s[scores={tvPoolMode=2}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackSmall] run function sprint_racer:game_logic/10/update_display/battle_small
execute if entity @s[scores={tvPoolMode=2}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackMedium] run function sprint_racer:game_logic/10/update_display/battle_medium
execute if entity @s[scores={tvPoolMode=2}] if entity @e[tag=focusT,type=armor_stand,tag=!customPreview,tag=trackLarge] run function sprint_racer:game_logic/10/update_display/battle_large


#make sure players have the proper inventory stuff

#create new track (SLOT 0, crafting table)
tag @e[tag=hasMap3] remove hasMap3
tag @a[nbt={Inventory:[{Slot:0b,id:"minecraft:crafting_table",components:{"minecraft:custom_data":{createnew:1b}}}]}] add hasMap3
clear @a[tag=!hasMap3] crafting_table
execute as @a[gamemode=!creative,tag=!hasMap3] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/create_new
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand crafting_table[custom_data~{createnew:1b}] run function sprint_racer_language:_dlc_6/lobby/custom_track/create_track_menu

#test track (SLOT 1, chain command block)
tag @e[tag=hasChainCB] remove hasChainCB
tag @a[nbt={Inventory:[{Slot:1b,id:"minecraft:chain_command_block",components:{"minecraft:custom_data":{testtrack:1b}}}]}] add hasChainCB
clear @a[tag=!hasChainCB] chain_command_block
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a chain_command_block
execute if entity @e[tag=focusT,type=armor_stand] as @a[gamemode=!creative,tag=!hasChainCB] run function sprint_racer_language:_dlc_2/lobby/custom_track_inv/test_track
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand chain_command_block[custom_data~{testtrack:1b}] run function sprint_racer:game_logic/10/controls/test_track_menu

#edit track (SLOT 2, structure block)
tag @e[tag=hasSBlock] remove hasSBlock
tag @a[nbt={Inventory:[{Slot:2b,id:"minecraft:structure_block",components:{"minecraft:custom_data":{edittrack:1b}}}]}] add hasSBlock
clear @a[tag=!hasSBlock] structure_block
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a structure_block
execute if entity @e[tag=focusT,type=armor_stand] as @a[gamemode=!creative,tag=!hasSBlock] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/edit_track
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand structure_block[custom_data~{edittrack:1b}] run function sprint_racer:game_logic/10/controls/edit_track

#track config (SLOT 3, lectern)
tag @e[tag=hasLectern] remove hasLectern
tag @a[nbt={Inventory:[{Slot:3b,id:"minecraft:lectern",components:{"minecraft:custom_data":{trackconfig:1b}}}]}] add hasLectern
clear @a[tag=!hasLectern] lectern
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a lectern
execute if entity @e[tag=focusT,type=armor_stand] as @a[gamemode=!creative,tag=!hasLectern] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/track_config
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand lectern[custom_data~{trackconfig:1b}] run function sprint_racer:game_logic/10/controls/track_config

#controls for enabling or banning a track (SLOT 4, dye)
tag @e[tag=hasMap1] remove hasMap1
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:lime_dye",components:{"minecraft:custom_data":{trackAllow:1b}}}]}] add hasMap1
execute if entity @s[tag=!focusTrackBan] run clear @a[tag=!hasMap1] lime_dye
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a lime_dye
execute if entity @s[tag=!focusTrackBan] if entity @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_1/lobby/track_allow_item
execute if entity @s[tag=!focusTrackBan] if entity @a[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackAllow:1b}}}}] run function sprint_racer:game_logic/9/ban_track

tag @e[tag=hasMap2] remove hasMap2
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:gray_dye",components:{"minecraft:custom_data":{trackDeny:1b}}}]}] add hasMap2
execute if entity @s[tag=focusTrackBan] run clear @a[tag=!hasMap2] gray_dye
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a gray_dye
execute if entity @s[tag=focusTrackBan] if entity @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_1/lobby/track_deny_item
execute if entity @s[tag=focusTrackBan] if entity @a[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackDeny:1b}}}}] run function sprint_racer:game_logic/9/enable_track

#medal times (SLOT 5, yellow_stained_glass)
tag @e[tag=hasMTime] remove hasMTime
tag @a[nbt={Inventory:[{Slot:5b,id:"minecraft:yellow_stained_glass",components:{"minecraft:custom_data":{trackmedaltime:1b}}}]}] add hasMTime
clear @a[tag=!hasMTime] yellow_stained_glass
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a yellow_stained_glass
execute if entity @e[tag=focusT,type=armor_stand] as @a[gamemode=!creative,tag=!hasMTime] run function sprint_racer_language:_dlc_2/lobby/custom_track_inv/medal_times
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand yellow_stained_glass[custom_data~{trackmedaltime:1b}] run function sprint_racer:game_logic/10/controls/medal_times

#delete track (SLOT 6, tnt)
tag @e[tag=hasTNT] remove hasTNT
tag @a[nbt={Inventory:[{Slot:6b,id:"minecraft:tnt",components:{"minecraft:custom_data":{deletetrack:1b}}}]}] add hasTNT
clear @a[tag=!hasTNT] tnt
execute unless entity @e[tag=focusT,type=armor_stand] run clear @a tnt
execute if entity @e[tag=focusT,type=armor_stand] as @a[gamemode=!creative,tag=!hasTNT] run function sprint_racer_language:_dlc_2/lobby/custom_track_inv/delete_track
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand tnt[custom_data~{deletetrack:1b}] run function sprint_racer:game_logic/10/controls/delete_current

#help (SLOT 7, paper)
tag @e[tag=hasPaper] remove hasPaper
tag @a[nbt={Inventory:[{Slot:7b,id:"minecraft:paper",components:{"minecraft:custom_data":{helpcustom:1b}}}]}] add hasPaper
clear @a[tag=!hasPaper] paper
execute as @a[gamemode=!creative,tag=!hasPaper] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/help_custom
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand paper[custom_data~{helpcustom:1b}] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/help

#exit item
tag @e[tag=hasExit] remove hasExit
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] barrier
function sprint_racer_language:lobby/choose_track_exit_item


#insert more inventory stuff here
#create new track
#test track menu
#edit track
#track config
#allow in randomization?
#time attack times
#delete track
#help
#return to lobby


#back to lobby
execute as @a[scores={carrotInput=1..}] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{exit:1b}}}}] run function sprint_racer:game_logic/10/exit