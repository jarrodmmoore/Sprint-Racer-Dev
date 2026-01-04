#editor mode stuff...
execute if entity @s[tag=customTesting,scores={gameTime=100..}] as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=marker,tag=activator,scores={nodeState=1..}] run function sprint_racer_language:_dlc_2/editor_mode/warn_missing_activator
execute if entity @s[tag=customTesting] run scoreboard players set @a afkTime 0

#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[scores={gameTime=200..}] run function sprint_racer:game_logic/8/end_game_logic

#target logic
execute if entity @s[scores={gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/8/targets/targets_main
scoreboard players operation #hudTargetCount value = @s targetData

#HUD
execute if score #bbPersonalize value matches 2 if entity @s[scores={gameTime=160..99999}] run function sprint_racer:custom_hud/_custom_hud_main

#broke all targets? you're winner!
execute if entity @s[scores={gameTime=160..,timeRemaining=1..,targetData=..0},tag=!taValidFinish] run function sprint_racer:game_logic/8/finish_broke_all_targets

#potion effect nodes
function sprint_racer:game_logic/3/node_effects/node_effects_main

#show time in subtitle slot
scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1
execute if entity @s[tag=halftick] run scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run function sprint_racer_language:_dlc_1/gameplay/subtitle_total_time
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run title @a[tag=playing,tag=!finished,scores={lapAnimation=..0}] title [""]
execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] run title @a[tag=!playing] title [""]

#node loading stuff, staggered a bit for performance concerns
function sprint_racer:game_logic/1/node_loading/node_activation_tick

#item stuff
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/8/item_stuff
function sprint_racer:items/container_tick_time_attack

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/8/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/8/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#actionbar display
execute if entity @s[scores={gameTime=100..}] run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_timeattack_2

#track-specific logic
execute as @e[tag=chosenTrack,type=armor_stand,limit=1] run function sprint_racer:levels/_index_levels_battle

#boundary stuff
execute if entity @s[scores={gameTime=160..}] as @e[tag=activeplayer] at @s run function sprint_racer:game_logic/8/boundaries
execute as @e[type=ender_pearl] at @s if block ~ 0 ~ black_wool run kill @s

#repeat a few functions in half tick speed mode is enabled
execute if entity @s[tag=halftick,scores={gameState=8}] run function sprint_racer:game_logic/8/gl8_main_echo

#keep spectators from flying away
execute if entity @s[scores={gameTime=100..}] as @a[gamemode=spectator] at @s unless entity @e[tag=activator,type=marker,distance=..200,scores={nodeState=1..}] run function sprint_racer:spectators_keep_in_bounds


#reset
scoreboard players remove @a[scores={resetCooldown=1..}] resetCooldown 1

#restart
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{restart:1b}] at @s run function sprint_racer:game_logic/8/do_a_restart
execute as @a[scores={dropSVoid=1..}] run function sprint_racer:game_logic/8/abort_ta

#give restart item
tag @a[tag=hasRestart] remove hasRestart
tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:7b,id:"minecraft:structure_void",components:{"minecraft:custom_data":{restart:1b}}}]}] add hasRestart
clear @a[gamemode=!creative,tag=!hasRestart] structure_void
execute as @a[gamemode=!creative,tag=!hasRestart,tag=!noInventory] run function sprint_racer_language:_dlc_1/gameplay/give_restart_2