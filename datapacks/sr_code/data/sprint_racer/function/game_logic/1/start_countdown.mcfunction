#prevent the AFK system from causing problems while players are held in place
execute if entity @s[scores={gameTime=..160}] run scoreboard players set @a[tag=playing] afkTime 0

#loading
execute if entity @s[scores={gameTime=..-1}] run function sprint_racer_language:_dlc_3/gameplay/loading
execute if entity @s[scores={gameTime=-20..-1}] at @s as @a[tag=playing,limit=1,sort=furthest] at @s run scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=node,tag=activator,distance=..150] nodeState 5
execute if entity @s[tag=!customTesting,scores={gameTime=-10}] if score global loadAttempts matches 20.. run function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=activator,scores={nodeState=1..}] unless score global loadAttempts matches 20.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=playerstart,tag=!psBattle,scores={nodeState=1..}] unless score global loadAttempts matches 20.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=-48..50,gameState=1}] run function sprint_racer:game_logic/1/loading_animation
execute if entity @s[scores={gameTime=51..55}] run title @a subtitle [""]
execute if entity @s[scores={gameTime=51..55}] run title @a title [""]

#kill any old item containers and traps that might be knocking about
execute if entity @s[scores={gameTime=40}] run kill @e[tag=itemcontainer]
execute if entity @s[scores={gameTime=40}] run kill @e[tag=trap]
execute if entity @s[scores={gameTime=40}] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}]

#keep players from flying about while the track loads
execute if entity @s[scores={gameTime=-40}] at @s as @a[limit=1,sort=furthest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["RHoldPlayers"]}
execute if entity @s[scores={gameTime=-40}] run gamemode adventure @a
execute if entity @s[scores={gameTime=-40}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @s[scores={gameTime=-40..49}] run function sprint_racer:hold_players_in_place


execute if entity @s[tag=!noCrowdSFX,scores={gameTime=50}] if score grandprix gameState matches 1 as @a[tag=playing] at @s run function sprint_racer:grand_prix/crowd_cheer_big

execute if entity @s[scores={gameTime=45}] run function sprint_racer:game_logic/1/ai_initialize
execute if entity @s[scores={gameTime=45,gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/generate_seed
execute if entity @s[scores={gameTime=50}] run scoreboard players set @e[tag=ai] invisibility 1000
execute if entity @s[scores={gameTime=50}] run team modify player seeFriendlyInvisibles true
execute if entity @s[scores={gameTime=50}] run effect clear @a night_vision
execute if entity @s[scores={gameTime=50}] run function sprint_racer:game_logic/1/find_playerstart_main
execute if entity @s[scores={gameTime=51}] as @a[tag=!playing] at @s run function sprint_racer:game_logic/1/spectators_setup
execute if entity @s[scores={gameTime=51..159}] as @e[tag=activeplayer] at @s run tp @s @e[limit=1,distance=..50,sort=nearest,tag=node,tag=playerstart,tag=!psBattle]
execute if entity @s[scores={gameTime=50..159}] run effect give @a[tag=playing] invisibility 15 1 true
execute if entity @s[scores={gameTime=52}] run effect clear @a blindness
execute if entity @s[scores={gameTime=52}] run effect give @a blindness 1 10 true
tag @s[tag=!ignoreCalc,scores={gameTime=100}] add calcStart
execute if entity @s[tag=!gauntletTrack,scores={gameTime=100,gamemodePresetA=1}] run function sprint_racer:announce_gamemode/1_standard_race
execute if entity @s[tag=gauntletTrack,scores={gameTime=100,gamemodePresetA=1}] run function sprint_racer:announce_gamemode/7_gauntlet_track
execute if entity @s[scores={gameTime=100,gamemodePresetA=2}] run function sprint_racer:announce_gamemode/2_last_place_elimination
execute if entity @s[scores={gameTime=100,gamemodePresetA=3}] run function sprint_racer:announce_gamemode/8_tactics_race
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime 0
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime2 0
execute if entity @s[scores={gameTime=50}] run gamemode adventure @a[tag=playing,tag=!spectate]
execute if entity @s[scores={gameTime=50}] as @a[tag=playing] at @s run function sprint_racer:game_logic/1/self_scoreboard_setup
execute if entity @s[scores={gameTime=50}] as @e[tag=ai] at @s run function sprint_racer:game_logic/1/self_scoreboard_setup_ai
execute if entity @s[scores={gameTime=140..160}] run scoreboard players set @e[tag=activeplayer] resetCooldown 80
execute if entity @s[scores={gameTime=160}] as @a[gamemode=adventure] at @s run spawnpoint @s ~ ~1 ~
execute if entity @s[scores={gameTime=180}] run scoreboard objectives setdisplay sidebar racePosDisplay2

#show special starting countdown based on the value of "startType"
execute if entity @s[scores={startType=0,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/0
execute if entity @s[scores={startType=1,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/1
execute if entity @s[scores={startType=2,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/2
execute if entity @s[scores={startType=3,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/3
execute if entity @s[scores={startType=4,gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/4
execute if entity @s[scores={startType=5,gameTime=90..}] run function sprint_racer_language:_dlc_2/gameplay/start_countdown/5
execute if entity @s[scores={startType=6..,gameTime=90..}] run function sprint_racer_language:_dlc_3/gameplay/start_countdown/6

#specialized start countdown stuff for individual tracks
execute if entity @s[scores={gameTime=0..240}] as @e[tag=chosenTrack] run function sprint_racer:levels/_index_levels_race_start_countdown


#reset speeds and heal players at "GO!"
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

execute if entity @s[tag=optBalance,tag=timeBalance,scores={gameTime=160}] run scoreboard players set @e[tag=activeplayer] itemLuck 1
execute if entity @s[tag=!optNoItems,tag=!absorpNever,scores={gameTime=160}] run function sprint_racer:game_logic/1/give_health_bonus
execute if entity @s[scores={gameTime=162,gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/start

#start music after "GO!"
execute if entity @s[scores={gameTime=160}] run function sprint_racer:music/global/pick_track

#try to avoid the spawn bed obstruction bug
execute if entity @s[scores={gameTime=160}] run function sprint_racer:new_spawnpoint