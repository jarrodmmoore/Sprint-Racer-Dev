#this is executed by entity "w"
#each higher state number takes priority over lower ones


#state -10, spectators can examine nearby players
execute as @a[tag=!miniHUD,scores={actionbarState=-10}] at @s run function sprint_racer:game_logic/7/spectator_actionbar/find_nearest_player
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=miniHUD,scores={actionbarState=-10,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":0"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=miniHUD,scores={actionbarState=-10,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]


#state -3, elytra text
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{translate:"sr.game.elytra_activated",bold:true,color:"blue"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{translate:"sr.game.elytra_activated",bold:true,color:"aqua"}]
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{translate:"sr.game.elytra_lost",bold:true,color:"gray"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{translate:"sr.game.elytra_lost",bold:true,color:"dark_gray"}]


#state -2, show item pickup cooldown to impatient players
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{translate:"sr.game.pickup_cooldown",bold:true,color:"yellow"},{text:" [",bold:true,color:"yellow"},{score:{name:"@s",objective:"pickupTimer"},bold:true,color:"yellow"},{text:"s]",bold:true,color:"yellow"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{translate:"sr.game.pickup_cooldown",bold:true,color:"gold"},{text:" [",bold:true,color:"gold"},{score:{name:"@s",objective:"pickupTimer"},bold:true,color:"gold"},{text:"s]",bold:true,color:"gold"}]


#state -1, show final time
#(CUT)
#execute if entity @s[scores={currentTimeSec=..9}] run title @a[scores={actionbarState=-1}] actionbar ["",{translate:"sr.game.final_time",color:"yellow",bold:true},{score:{name:"@s",objective:"currentTimeMin"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"currentTimeSec"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"currentTimeMsec"},color:"yellow"}]
#execute if entity @s[scores={currentTimeSec=10..}] run title @a[scores={actionbarState=-1}] actionbar ["",{translate:"sr.game.final_time",color:"yellow",bold:true},{score:{name:"@s",objective:"currentTimeMin"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"currentTimeSec"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"currentTimeMsec"},color:"yellow"}]


#state 1, DEFAULT STATE, show current LAP time or navigator depending on settings
execute as @a[tag=playing,gamemode=adventure,tag=timer,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] run function sprint_racer_language:_dlc_1/gameplay/ta_self_lap_display
execute as @a[tag=playing,gamemode=adventure,tag=!timer,tag=navigator,scores={actionbarState=1,showCheckNav=..0}] run function sprint_racer_language:gameplay/navigation_arrow_light
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=!timer,tag=!darkHUD,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":0"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=!timer,tag=!darkHUD,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=!timer,tag=darkHUD,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"},color:"gray"},{text:":0",color:"gray"},{score:{name:"@s",objective:"currentTimeSec"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"currentTimeMsec"},color:"gray"}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=!timer,tag=darkHUD,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] actionbar ["",{score:{name:"@s",objective:"currentTimeMin"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"currentTimeSec"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"currentTimeMsec"},color:"gray"}]
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] as @a[tag=playing,gamemode=adventure,scores={actionbarState=1,showCheckNav=1..}] at @s run function sprint_racer:game_logic/1/nav_elytra/nav_ely_main

#state 2, flash split time for LAP
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_timeattack_split
execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=1}] run title @a[scores={actionbarState=2}] actionbar [""]
execute if entity @s[tag=halftick] as @a[scores={actionbarState=2}] at @s run function sprint_racer_language:_dlc_1/gameplay/flash_split_halftick_ta

#state 3, show timers for resistance, invisibility, invincibility
execute if entity @a[scores={actionbarState=3}] run function sprint_racer_language:gameplay/effects_display_race


#state 4, tell players how to enchant items
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[scores={actionbarState=4}] actionbar ["",{translate:"sr.game.hold_item_in_hand",color:"light_purple",bold:true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[scores={actionbarState=4}] actionbar ["",{translate:"sr.game.hold_item_in_hand",color:"dark_purple",bold:true}]


#state 5, announce finish of most recently finished medal time
#this is intentionally blank, handled in other functions


#state 6, off course
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{translate:"sr.game.off_course",color:"red",bold:true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{translate:"sr.game.off_course",color:"dark_red",bold:true}]


#state 7, wrong way
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{translate:"sr.game.wrong_way",color:"red",bold:true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{translate:"sr.game.wrong_way",color:"dark_red",bold:true}]


#state 8, missed checkpoint
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{translate:"sr.game.missed_a_checkpoint",color:"red",bold:true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{translate:"sr.game.missed_a_checkpoint",color:"dark_red",bold:true}]



#when actionbarState2 hits zero, go back to state 0
#unless the player is finished, in which case we send them to actionbarState 100
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1
scoreboard players set @a[tag=playing,tag=finished,scores={actionbarState2=..0,actionbarState=0..99}] actionbarState -1
scoreboard players set @a[tag=!playing] actionbarState -10

#repeat the timer stuff again when half tick speed is enabled
execute if score #halftick value matches 1 run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_timeattack_echo