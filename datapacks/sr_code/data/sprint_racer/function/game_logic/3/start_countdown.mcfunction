#prevent the AFK system from causing problems while players are held in place
execute if entity @s[scores={gameTime=..160}] run scoreboard players set @a[tag=playing] afkTime 0

#clear scoreboard cache?
execute if score #clearCacheAllowed value matches 1 run function sprint_racer:game_logic/2/node_update/clear_scoreboard_cache

#loading
execute if entity @s[scores={gameTime=..-1}] run function sprint_racer_language:_dlc_3/gameplay/loading
execute if entity @s[scores={gameTime=-20..-1}] at @s as @a[tag=playing,limit=1,sort=furthest] at @s run scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=node,tag=activator,distance=..150] nodeState 5
execute if entity @s[tag=!customTesting,scores={gameTime=-10}] if score global loadAttempts matches 20.. run function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=activator,scores={nodeState=1..}] unless score global loadAttempts matches 20.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}] unless score global loadAttempts matches 20.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=-48..50,gameState=3}] run function sprint_racer:game_logic/3/loading_animation
execute if entity @s[scores={gameTime=51..55}] run title @a subtitle [""]
execute if entity @s[scores={gameTime=51..55}] run title @a title [""]
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 0 run scoreboard players set @s gameTime 40

#kill any old item containers and traps that might be knocking about
execute if entity @s[scores={gameTime=40}] as @e[tag=itemcontainer] at @s run function sprint_racer:items/container_delete
execute if entity @s[scores={gameTime=40}] run kill @e[tag=trap]
execute if entity @s[scores={gameTime=40}] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}]

#keep players from flying about while the track loads
execute if entity @s[scores={gameTime=-40}] at @s as @a[limit=1,sort=furthest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["RHoldPlayers"]}
execute if entity @s[scores={gameTime=-40}] run gamemode adventure @a
execute if entity @s[scores={gameTime=-40}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @s[scores={gameTime=-40..49}] run function sprint_racer:hold_players_in_place


execute if entity @s[tag=!noCrowdSFX,scores={gameTime=50}] if score grandprix gameState matches 1 as @a[tag=playing] at @s run function sprint_racer:grand_prix/crowd_cheer_big

execute if entity @s[scores={gameTime=45}] run function sprint_racer:game_logic/3/ai_initialize
execute if entity @s[scores={gameTime=50}] run scoreboard players set @e[tag=ai] invisibility 1000
execute if entity @s[scores={gameTime=50}] run team modify player seeFriendlyInvisibles true
execute if entity @s[scores={gameTime=50}] run function sprint_racer:game_logic/3/find_playerstart_main
execute if entity @s[scores={gameTime=50}] run effect clear @a night_vision
execute if entity @s[scores={gameTime=51}] as @a[tag=!playing] at @s run function sprint_racer:game_logic/3/spectators_setup
execute if entity @s[scores={gameTime=51..159}] as @e[tag=activeplayer] at @s run tp @s @e[limit=1,scores={nodeState=1..},sort=nearest,tag=node,tag=playerstart,tag=psBattle,distance=..100]
execute if entity @s[scores={gameTime=50..159}] run effect give @a[tag=playing] invisibility 15 1 true
execute if entity @s[scores={gameTime=52}] run effect clear @a blindness
execute if entity @s[scores={gameTime=52}] run effect give @a blindness 1 10 true
tag @s[tag=!ignoreCalc,scores={gameTime=100}] add calcStart
execute if entity @s[scores={gameTime=100,gamemodePresetB=1}] run function sprint_racer:announce_gamemode/3_timed_ko_fest
execute if entity @s[scores={gameTime=100,gamemodePresetB=2}] run function sprint_racer:announce_gamemode/4_3_lives_elimination
execute if entity @s[scores={gameTime=100,gamemodePresetB=3}] run function sprint_racer:announce_gamemode/9_resource_control
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime 0
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime2 0
execute if entity @s[scores={gameTime=50}] run gamemode adventure @a[tag=playing,tag=!spectate]
execute if entity @s[scores={gameTime=50}] as @a[tag=playing] at @s run function sprint_racer:game_logic/3/self_scoreboard_setup
execute if entity @s[scores={gameTime=50}] as @e[tag=ai] at @s run function sprint_racer:game_logic/3/self_scoreboard_setup_ai
execute if entity @s[scores={gameTime=140..160}] run scoreboard players set @e[tag=activeplayer] resetCooldown 80
execute if entity @s[scores={gameTime=180}] run scoreboard objectives setdisplay sidebar
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 52 run scoreboard players set @s gameTime 99

#show special starting countdown based on the value of "startType"
execute if entity @s[scores={startType=0,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/battle0
execute if entity @s[scores={startType=1,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/battle1
execute if entity @s[scores={startType=2,gameTime=90..}] run function sprint_racer_language:_dlc_3/gameplay/start_countdown/battle2
execute if entity @s[scores={startType=3,gameTime=90..}] run function sprint_racer_language:_dlc_3/gameplay/start_countdown/battle3
execute if entity @s[scores={startType=4..,gameTime=90..}] run function sprint_racer_language:_dlc_3/gameplay/start_countdown/battle4

#specialized start countdown stuff for individual tracks
execute if entity @s[scores={gameTime=0..240}] as @e[tag=chosenTrack,type=armor_stand,limit=1] run function sprint_racer:levels/_index_levels_battle_start_countdown


#reset speeds and heal players at "GO!"
execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] aiDelayNewPath 5
execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] aiBehavior 1
execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] aiSubBehavior 1
execute if entity @s[scores={gameTime=160}] run scoreboard players set @s[scores={timeRemaining=..50}] timeRemaining 4800
execute if entity @s[scores={gameTime=160}] run function sprint_racer:reset_speeds
execute if entity @s[scores={gameTime=160}] run team modify player seeFriendlyInvisibles false
execute if entity @s[scores={gameTime=160}] run effect clear @e[tag=ai]
execute if entity @s[scores={gameTime=160}] run effect give @a resistance 1 100 true
execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] invisibility 2
#execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] aiDelayNewPath 2
execute if entity @s[scores={gameTime=160}] run kill @e[type=marker,tag=aiTempTarget]
execute if entity @s[scores={gameTime=160}] run tag @e[tag=ai] add remote_inherit_nearest
execute if entity @s[scores={gameTime=160}] run tag @a[tag=noInventory] remove noInventory
execute if entity @s[scores={gameTime=160}] run tag @a[limit=1] add spdbump
execute if entity @s[scores={gameTime=160}] as @a run function sprint_racer:save_coordinates
execute if entity @s[scores={gameTime=160}] as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#show locator bar after "GO!"
execute if entity @s[scores={gameTime=160},tag=!optNoLocatorBar] run function sprint_racer:speedometer/disable_xp_bar

#start music after "GO!"
execute if entity @s[scores={gameTime=160}] run function sprint_racer:music/global/pick_track

#try to avoid the spawn bed obstruction bug
execute if entity @s[scores={gameTime=160}] run function sprint_racer:new_spawnpoint