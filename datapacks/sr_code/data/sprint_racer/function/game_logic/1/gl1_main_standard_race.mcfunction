#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[scores={gameTime=200..}] run function sprint_racer:game_logic/1/end_game_logic

#lap display / HUD
execute if score #bbPersonalize value matches 0 if entity @s[tag=!hideLaps,scores={lap=1..10,gameTime=160..}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_main
execute if score #bbPersonalize value matches 1 if entity @s[tag=!hideLaps,scores={gameTime=160..}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_main_personal
execute if score #bbPersonalize value matches 2 if entity @s[scores={gameTime=160..99999}] run function sprint_racer:custom_hud/_custom_hud_main

#delayed showing of a player's final results since they eat up a lot of the screen
scoreboard players remove @a[scores={lapShowDelay=1..}] lapShowDelay 1
execute as @a[tag=finished,scores={lapShowDelay=1}] at @s run function sprint_racer:game_logic/1/record_lap/show_final_results_delayed

#potion effect nodes
function sprint_racer:game_logic/1/node_effects/node_effects_main

#position calculator
execute if score #useFastCalc value matches 1 run function sprint_racer:game_logic/1/position_calc/improved/_tick
execute if score #useFastCalc value matches 0 if entity @s[tag=!moretick,scores={gameTime=100..,lap=..50}] unless entity @s[tag=ignoreCalc] run function sprint_racer:game_logic/1/position_calc/cycle_tick
execute if score #useFastCalc value matches 0 if entity @s[tag=!moretick,tag=halftick,scores={gameTime=100..,lap=..50}] unless entity @s[tag=ignoreCalc] run function sprint_racer:game_logic/1/position_calc/cycle_tick
execute if score #useFastCalc value matches 0 if entity @s[tag=moretick,scores={gameTime=160..,lap=..50}] unless entity @s[tag=ignoreCalc] run function sprint_racer:game_logic/1/position_calc/cycle_tick_fast_calc
execute unless entity @s[tag=ignoreCalc] if entity @s[scores={gameTime=200..,timeRemaining=1..}] run function sprint_racer:game_logic/1/position_calc/subtitle_display

#node loading stuff, staggered a bit for performance concerns
scoreboard players add @s nodeTimeCycle 1
scoreboard players set @s[scores={nodeTimeCycle=21..}] nodeTimeCycle 1
execute if entity @s[scores={nodeTimeCycle=1}] as @e[tag=node,tag=activator,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=node,distance=..100] nodeState 1

#item stuff
execute if entity @s[tag=optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/1/item_stuff
execute if entity @s[tag=!optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..,timeRemaining=1..}] run function sprint_racer:items/container_check_itemless
execute unless entity @s[scores={gamemodePresetA=3}] run function sprint_racer:items/container_tick
execute if entity @s[scores={gamemodePresetA=3}] run function sprint_racer:items/container_tick_tactics

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/1/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/1/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#actionbar display
execute as @a[tag=navigator,tag=playing,tag=!finished] run function sprint_racer:game_logic/1/navigator_text_overrides
execute if entity @s[scores={gameTime=100..}] run function sprint_racer_language:gameplay/actionbar_display_race

#lap animation
#execute as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index

#checkpoints and finish line
execute as @e[tag=checkpoint,type=marker,tag=node,scores={nodeState=1..}] at @s positioned ~-5 -64 ~-5 if entity @e[tag=activeplayer,dx=9,dy=400,dz=9] run function sprint_racer:game_logic/1/checkpoint_operate_any_y
execute as @e[tag=finishline,type=marker,tag=node,scores={nodeState=1..}] at @s positioned ~-5 -64 ~-5 if entity @e[tag=activeplayer,dx=9,dy=400,dz=9] run function sprint_racer:game_logic/1/finishline_operate_any_y
execute as @a[tag=checkIncrement] at @s run function sprint_racer:game_logic/1/increment_checkpoint
execute as @e[tag=ai,tag=checkIncrement] at @s run function sprint_racer:game_logic/1/increment_checkpoint_ai
execute as @a[tag=finishLap] at @s run function sprint_racer:game_logic/1/finish_lap
execute as @e[tag=ai,tag=finishLap] at @s run function sprint_racer:game_logic/1/finish_lap_ai
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
execute as @a[tag=!noInventory,tag=playing,gamemode=adventure] run function sprint_racer:game_logic/1/nav/main_logic
execute as @e[type=ender_pearl] at @s if block ~ 0 ~ black_wool run kill @s
scoreboard players add @a[scores={recDirection=10,offCourseBuffer=..23}] offCourseBuffer 2
scoreboard players add @a[scores={navDirection=3..5,wrongWayBuffer=..23}] wrongWayBuffer 2
scoreboard players remove @a[scores={offCourseBuffer=1..}] offCourseBuffer 1
scoreboard players remove @a[scores={wrongWayBuffer=1..}] wrongWayBuffer 1

#anvil lead check
execute if score #nextItemIsAnvil value matches 0 run scoreboard players remove #anvilLeadCheck value 1
execute if score #anvilLeadCheck value matches ..0 run function sprint_racer:game_logic/1/anvil_lead_check

#repeat a few functions in half tick speed mode is enabled
execute if entity @s[tag=halftick,scores={gameState=1}] run function sprint_racer:game_logic/1/gl1_main_standard_race_echo

#keep spectators from flying away
execute if entity @s[scores={gameTime=100..}] as @a[gamemode=spectator] at @s unless entity @e[tag=activator,distance=..120,scores={nodeState=1..}] run function sprint_racer:spectators_keep_in_bounds

#reset
scoreboard players remove @a[scores={resetCooldown=1..}] resetCooldown 1
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{reset:1b}] at @s run function sprint_racer:game_logic/1/reset/player_use_reset

#give reset item
tag @a[tag=hasReset] remove hasReset
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{reset:1b}}}]}] add hasReset
clear @a[gamemode=!creative,tag=!hasReset] barrier
execute as @a[gamemode=!creative,tag=!hasReset,tag=!noInventory] run function sprint_racer_language:give_barrier