#keep players in the box
execute as @a at @s unless entity @s[x=1581,y=76,z=365,dx=12,dy=12,dz=12] run tp @s 1584 77 370 270 -12

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

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin,scores={gameState=1..}] run function sprint_racer:game_logic/9/spectators

#heals for all
effect give @a[scores={hp=..19}] instant_health 1 10 true

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,gamemode=spectator] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump


#make sure players have the proper inventory stuff
tag @e[tag=hasExit] remove hasExit
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] barrier
function sprint_racer_language:lobby/choose_track_exit_item

tag @s remove focusTrackBan

execute if entity @s[scores={tvPoolMode=1}] run function sprint_racer:game_logic/9/race_access_data
execute if entity @s[scores={tvPoolMode=2}] run function sprint_racer:game_logic/9/battle_access_data

#show if banned or not with text
execute if entity @s[tag=!focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_indicate_allowed
execute if entity @s[tag=focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_indicate_banned

#controls for enabling or banning a track
tag @e[tag=hasMap1] remove hasMap1
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:lime_dye",components:{"minecraft:custom_data":{trackAllow:1b}}}]}] add hasMap1
execute if entity @s[tag=!focusTrackBan] run clear @a[tag=!hasMap1] lime_dye
execute if entity @s[tag=!focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_allow_item
execute if entity @s[tag=!focusTrackBan] if entity @a[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackAllow:1b}}}}] run function sprint_racer:game_logic/9/ban_track

tag @e[tag=hasMap2] remove hasMap2
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:gray_dye",components:{"minecraft:custom_data":{trackDeny:1b}}}]}] add hasMap2
execute if entity @s[tag=focusTrackBan] run clear @a[tag=!hasMap2] gray_dye
execute if entity @s[tag=focusTrackBan] run function sprint_racer_language:_dlc_1/lobby/track_deny_item
execute if entity @s[tag=focusTrackBan] if entity @a[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackDeny:1b}}}}] run function sprint_racer:game_logic/9/enable_track

#control tips
execute if entity @s[tag=focusTrackBan] as @a if items entity @s weapon.mainhand gray_dye[custom_data~{trackDeny:1b}] run function sprint_racer_language:_dlc_1/actionbar_control_tips/allow
execute if entity @s[tag=focusTrackBan] as @a unless items entity @s weapon.mainhand gray_dye[custom_data~{trackDeny:1b}] run title @s actionbar [""]
execute if entity @s[tag=!focusTrackBan] as @a if items entity @s weapon.mainhand lime_dye[custom_data~{trackAllow:1b}] run function sprint_racer_language:_dlc_1/actionbar_control_tips/ban
execute if entity @s[tag=!focusTrackBan] as @a unless items entity @s weapon.mainhand lime_dye[custom_data~{trackAllow:1b}] run title @s actionbar [""]

tag @e[tag=focusT] remove focusT
tag @s remove focusTrackBan

#back to lobby
execute as @a[scores={carrotInput=1..}] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{exit:1b}}}}] run function sprint_racer:game_logic/9/exit