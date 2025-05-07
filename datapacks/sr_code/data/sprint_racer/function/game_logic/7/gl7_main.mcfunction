#editor mode stuff...
execute if entity @s[tag=customTesting,scores={gameTime=100..}] as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=marker,tag=activator,scores={nodeState=1..}] run function sprint_racer_language:_dlc_2/editor_mode/warn_missing_activator
execute if entity @s[tag=customTesting] run scoreboard players set @a afkTime 0

#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[scores={gameTime=200..}] run function sprint_racer:game_logic/7/end_game_logic

#lap display
execute if score #bbPersonalize value matches 0 if entity @s[tag=!hideLaps,scores={lap=1..10,gameTime=160..}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_main
execute if score #bbPersonalize value matches 1 if entity @s[tag=!hideLaps,scores={gameTime=160..}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_main_personal
execute if score #bbPersonalize value matches 2 if entity @s[scores={gameTime=160..99999}] run function sprint_racer:custom_hud/_custom_hud_main

#delayed showing of a player's final results since they eat up a lot of the screen
scoreboard players remove @a[scores={lapShowDelay=1..}] lapShowDelay 1
execute as @a[tag=finished,scores={lapShowDelay=1}] at @s run function sprint_racer:game_logic/1/record_lap/show_final_results_delayed

#potion effect nodes
function sprint_racer:game_logic/1/node_effects/node_effects_main

#show time in subtitle slot
scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1
execute if entity @s[tag=halftick] run scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run function sprint_racer_language:_dlc_1/gameplay/subtitle_total_time
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run title @a[tag=playing,tag=!finished,scores={lapAnimation=..0}] title [""]
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run title @a[tag=!playing] title [""]

#node loading stuff, staggered a bit for performance concerns
scoreboard players add @s nodeTimeCycle 1
scoreboard players set @s[scores={nodeTimeCycle=21..}] nodeTimeCycle 1
execute if entity @s[scores={nodeTimeCycle=1}] as @e[tag=node,tag=activator,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=node,distance=..100] nodeState 1

#item stuff
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/7/item_stuff
function sprint_racer:items/container_tick_time_attack

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/7/start_countdown

#global timer
execute as @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/7/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#actionbar display
execute as @a[tag=navigator,tag=playing,tag=!finished] run function sprint_racer:game_logic/7/navigator_text_overrides
execute if entity @s[scores={gameTime=100..}] run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_timeattack

#lap animation
#execute as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index

#checkpoints and finish line
execute as @e[tag=checkpoint,type=marker,tag=node,scores={nodeState=1..}] at @s positioned ~-5 -64 ~-5 if entity @e[tag=activeplayer,dx=9,dy=400,dz=9] run function sprint_racer:game_logic/7/checkpoint_operate_any_y
execute as @e[tag=finishline,type=marker,tag=node,scores={nodeState=1..}] at @s positioned ~-5 -64 ~-5 if entity @e[tag=activeplayer,dx=9,dy=400,dz=9] run function sprint_racer:game_logic/7/finishline_operate_any_y
execute as @a[tag=checkIncrement] at @s run function sprint_racer:game_logic/7/increment_checkpoint
execute as @a[tag=finishLap] at @s run function sprint_racer:game_logic/7/finish_lap
execute if entity @s[scores={gameTime=160..}] run scoreboard players add @a[tag=playing,gamemode=adventure] timeSinceCheck 1
execute if entity @s[scores={gameTime=160..}] run scoreboard players add @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] timeSinceCheck 1

#visual checkpoint lines
function sprint_racer:game_logic/1/checkpoint_visual/draw_timer

#navigation stuff part 1
scoreboard players set @a[tag=playing,gamemode=!spectator] recDirection 0
function sprint_racer:game_logic/1/nav/_index

#track-specific logic
execute as @e[tag=chosenTrack,type=armor_stand,limit=1] run function sprint_racer:levels/_index_levels_race

#navigation stuff part 2
execute if entity @s[scores={gameTime=160..}] as @a[tag=!noInventory,tag=playing,gamemode=adventure] run function sprint_racer:game_logic/1/nav/main_logic
execute as @e[type=ender_pearl] at @s if block ~ 0 ~ black_wool run kill @s
scoreboard players add @a[scores={recDirection=10,offCourseBuffer=..23}] offCourseBuffer 2
scoreboard players add @a[scores={navDirection=3..5,wrongWayBuffer=..23}] wrongWayBuffer 2
scoreboard players remove @a[scores={offCourseBuffer=1..}] offCourseBuffer 1
scoreboard players remove @a[scores={wrongWayBuffer=1..}] wrongWayBuffer 1

#repeat a few functions in half tick speed mode is enabled
execute if entity @s[tag=halftick,scores={gameState=7}] run function sprint_racer:game_logic/7/gl7_main_echo

#keep spectators from flying away
execute if entity @s[scores={gameTime=100..}] as @a[gamemode=spectator] at @s unless entity @e[tag=activator,distance=..120,scores={nodeState=1..}] run function sprint_racer:spectators_keep_in_bounds


#reset
scoreboard players remove @a[scores={resetCooldown=1..}] resetCooldown 1

#restart
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{restart:1b}] at @s run function sprint_racer:game_logic/7/do_a_restart
execute as @a[scores={dropSVoid=1..}] run function sprint_racer:game_logic/7/abort_ta

#give restart item
tag @a[tag=hasRestart] remove hasRestart
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:8b,id:"minecraft:structure_void",components:{"minecraft:custom_data":{restart:1b}}}]}] add hasRestart
clear @a[gamemode=!creative,tag=!hasRestart] structure_void
execute as @a[gamemode=!creative,tag=!hasRestart,tag=!noInventory] run function sprint_racer_language:_dlc_1/gameplay/give_restart