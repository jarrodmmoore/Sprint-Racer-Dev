#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[scores={gameTime=160..}] run function sprint_racer:game_logic/3/end_game_logic_timed

#potion effect nodes
function sprint_racer:game_logic/3/node_effects/node_effects_main

#node loading stuff, staggered a bit for performance concerns
scoreboard players add @s nodeTimeCycle 1
scoreboard players set @s[scores={nodeTimeCycle=21..}] nodeTimeCycle 1
execute if entity @s[scores={nodeTimeCycle=1}] as @e[tag=node,tag=activator,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=node,distance=..100] nodeState 1

#rank calculation, new and improved
#runs at 20Hz when at highest quality mode
execute if entity @s[tag=moretick] run function sprint_racer:game_logic/3/fast_rank_calc/_start

#fancy new HUD :)
execute if score #bbPersonalize value matches 2 if entity @s[scores={gameTime=160..99999}] run function sprint_racer:custom_hud/_custom_hud_main

#item stuff and score displays
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/3/once_per_second_stuff
execute unless entity @s[scores={gamemodePresetB=3}] run function sprint_racer:items/container_tick
execute if entity @s[scores={gamemodePresetB=3}] run function sprint_racer:items/container_tick_resource_control
#execute if entity @s[scores={gameTime=200..99999}] as @a[tag=miniHUD,tag=playing,gamemode=adventure] run function sprint_racer:game_logic/3/hide_hp_counter
#execute if entity @s[scores={gameTime=200..,timeRemaining=1..}] as @a[tag=playing] run function sprint_racer:game_logic/3/subtitle_health
execute if entity @s[scores={gameTime=200..99999}] run title @a[tag=playing,scores={subtitleDelay=..0}] subtitle [""]
execute if entity @s[scores={gameTime=200..99999}] run title @a[tag=playing,scores={subtitleDelay=..0}] title [""]

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/3/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/3/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#actionbar display
execute if entity @s[scores={gameTime=100..}] run function sprint_racer_language:gameplay/actionbar_display_battle
execute if entity @s[scores={gameTime=100..}] run function sprint_racer:game_logic/3/heal_aware

#track-specific logic
execute as @e[limit=1,type=armor_stand,tag=chosenTrack] run function sprint_racer:levels/_index_levels_battle

#boundary stuff
execute if entity @s[scores={gameTime=160..}] as @e[tag=activeplayer] at @s run function sprint_racer:game_logic/3/boundaries
execute as @e[type=ender_pearl] at @s if block ~ 0 ~ black_wool run kill @s

#keep spectators from flying away
execute if entity @s[scores={gameTime=100..}] as @a[gamemode=spectator] at @s unless entity @e[tag=activator,distance=..120,scores={nodeState=1..}] run function sprint_racer:spectators_keep_in_bounds

#repeat a few functions in half tick speed mode is enabled
execute if entity @s[tag=halftick,scores={gameState=3}] run function sprint_racer:game_logic/3/gl3_main_ko_fest_echo

#reset
#scoreboard players remove @a[scores={resetCooldown=1..}] resetCooldown 1
#execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{reset:1b}] at @s run function sprint_racer:game_logic/1/reset/player_use_reset

#give reset item (DISABLED IN BATTLE MODE)
#tag @a[tag=hasReset] remove hasReset
#tag @a[gamemode=!creative,tag=playing,nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{reset:1b}}}]}] add hasReset
#clear @a[gamemode=!creative,tag=!hasReset] barrier
#execute as @a[gamemode=!creative,tag=!hasReset,tag=!noInventory] run function sprint_racer_language:give_barrier