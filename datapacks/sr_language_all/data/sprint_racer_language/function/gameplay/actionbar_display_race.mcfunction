#this is executed by entity "w"
#each higher state number takes priority over lower ones


#state -10, spectators can examine nearby players
execute as @a[scores={actionbarState=-10}] at @s run function sprint_racer:game_logic/1/spectator_actionbar/find_nearest_player


#state -3, elytra text
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"blue"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"aqua"}]
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"gray"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"dark_gray"}]


#state -2, show item pickup cooldown to impatient players
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"yellow"},{"text":" [","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"yellow"},{"text":"s]","bold":true,"color":"yellow"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"gold"},{"text":" [","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"gold"},{"text":"s]","bold":true,"color":"gold"}]


#state -1, show player's stored final time after finish
#(CUT)
#execute as @a[scores={actionbarState=-1,storedTimeSec=..9}] run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":0"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]
#execute as @a[scores={actionbarState=-1,storedTimeSec=10..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]


#state 1, DEFAULT STATE, show current time or navigator depending on settings
#(this was changed with the introduction of the new HUD)
execute unless score #bbPersonalize value matches 2 run function sprint_racer_language:gameplay/classic_actionbar_timer
execute if score #bbPersonalize value matches 2 run title @a[tag=timer,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] actionbar [""]
execute as @a[tag=playing,gamemode=adventure,tag=!timer,tag=navigator,scores={actionbarState=1,showCheckNav=..0}] run function sprint_racer_language:gameplay/navigation_arrow_light
#execute as @a[tag=playing,gamemode=adventure,tag=darkHUD,tag=!timer,tag=navigator,scores={actionbarState=1,showCheckNav=..0}] run function sprint_racer_language:gameplay/navigation_arrow_dark
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] as @a[tag=playing,gamemode=adventure,tag=!timer,tag=!navigator,scores={actionbarState=1,showCheckNav=..0}] run function sprint_racer_language:gameplay/position_display/mini/_index
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] as @a[tag=playing,gamemode=adventure,scores={actionbarState=1,showCheckNav=1..}] at @s run function sprint_racer:game_logic/1/nav_elytra/nav_ely_main


#state 2, flash split time (CUT)
#execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=!darkHUD,scores={actionbarState=2,storedTimeSec=..9}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":0"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]
#execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=!darkHUD,scores={actionbarState=2,storedTimeSec=10..}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeSec"}},{"text":":"},{"score":{"name":"@s","objective":"storedTimeMsec"}}]
#execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=darkHUD,scores={actionbarState=2,storedTimeSec=..9}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"},"color":"gray"},{"text":":0","color":"gray"},{"score":{"name":"@s","objective":"storedTimeSec"},"color":"gray"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"storedTimeMsec"},"color":"gray"}]
#execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=0}] as @a[tag=darkHUD,scores={actionbarState=2,storedTimeSec=10..}] at @s run title @s actionbar ["",{"score":{"name":"@s","objective":"storedTimeMin"},"color":"gray"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"storedTimeSec"},"color":"gray"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"storedTimeMsec"},"color":"gray"}]
#execute unless entity @s[tag=halftick] if entity @s[scores={oTimer=1}] run title @a[scores={actionbarState=2}] actionbar [""]
#execute if entity @s[tag=halftick] as @a[scores={actionbarState=2}] at @s run function sprint_racer_language:_dlc_1/gameplay/flash_split_halftick


#state 3, show timers for resistance, invisibility, invincibility
execute if entity @a[scores={actionbarState=3}] run function sprint_racer_language:gameplay/effects_display_race


#state 4, tell players how to enchant items
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"light_purple","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"dark_purple","bold":true}]


#state 5, announce finish of most recently finished player
execute if entity @a[scores={actionbarState=5}] as @e[tag=latestFinish,type=player] run function sprint_racer:game_logic/1/announce_finish
execute if entity @a[scores={actionbarState=5}] as @e[tag=latestFinish,tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:game_logic/1/announce_finish_ai


#state 6, off course
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{"translate":"sr.game.off_course","color":"red","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=6}] actionbar ["",{"translate":"sr.game.off_course","color":"dark_red","bold":true}]


#state 7, wrong way
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{"translate":"sr.game.wrong_way","color":"red","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=7}] actionbar ["",{"translate":"sr.game.wrong_way","color":"dark_red","bold":true}]


#state 8, missed checkpoint
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{"translate":"sr.game.missed_a_checkpoint","color":"red","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[tag=!noInventory,scores={actionbarState=8}] actionbar ["",{"translate":"sr.game.missed_a_checkpoint","color":"dark_red","bold":true}]



#when actionbarState2 hits zero, go back to state 0
#unless the player is finished, in which case we send them to actionbarState 100
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[tag=playing,tag=!finished,scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1
scoreboard players set @a[tag=playing,tag=finished,scores={actionbarState2=..0,actionbarState=0..99}] actionbarState -1
scoreboard players set @a[tag=!playing] actionbarState -10

#repeat the timer stuff again when half tick speed is enabled
execute if score #halftick value matches 1 run function sprint_racer_language:gameplay/actionbar_display_echo