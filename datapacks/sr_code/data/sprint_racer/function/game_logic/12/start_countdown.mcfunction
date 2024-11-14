#prevent the AFK system from causing problems while players are held in place
execute if entity @s[scores={gameTime=..160}] run scoreboard players set @a[tag=playing] afkTime 0

#loading
execute if entity @s[scores={gameTime=..-1}] run function sprint_racer_language:_dlc_3/gameplay/loading
execute if entity @s[scores={gameTime=-20..-1}] as @a[limit=1,sort=nearest,x=1090,y=64,z=828] at @s run scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=node,tag=activator,distance=..150] nodeState 5
execute if entity @s[tag=!customTesting,scores={gameTime=-10}] if score global loadAttempts matches 16.. run function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=activator,scores={nodeState=1..}] unless score global loadAttempts matches 16.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=-2..-1}] unless entity @e[limit=1,type=marker,tag=node,tag=playerstart,tag=!psBattle,scores={nodeState=1..}] unless score global loadAttempts matches 16.. run function sprint_racer:try_loading_activator_again
execute if entity @s[scores={gameTime=..50,gameState=12}] run function sprint_racer:game_logic/1/loading_animation
execute if entity @s[scores={gameTime=51..55}] run title @a subtitle [""]
execute if entity @s[scores={gameTime=51..55}] run title @a title [""]

#kill any old item containers and traps that might be knocking about
execute if entity @s[scores={gameTime=40}] run kill @e[tag=itemcontainer]
execute if entity @s[scores={gameTime=40}] run kill @e[tag=trap]
execute if entity @s[scores={gameTime=40}] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}]

#keep players from flying about while the track loads
execute if entity @s[scores={gameTime=-40}] as @a[limit=1,sort=nearest,x=1090,y=64,z=828] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["RHoldPlayers"]}
execute if entity @s[scores={gameTime=-40}] run gamemode adventure @a
execute if entity @s[scores={gameTime=-40}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @s[scores={gameTime=-40..49}] run function sprint_racer:hold_players_in_place


execute if entity @s[scores={gameTime=45}] as @s run function sprint_racer:game_logic/12/ai_initialize
execute if entity @s[scores={gameTime=50}] run scoreboard players set @e[tag=ai] invisibility 1000
execute if entity @s[scores={gameTime=50}] run team modify player seeFriendlyInvisibles true
execute if entity @s[scores={gameTime=50}] run function sprint_racer:game_logic/1/find_playerstart_main
execute if entity @s[scores={gameTime=50}] run effect clear @a night_vision
execute if entity @s[scores={gameTime=45..48}] as @a[gamemode=!spectator] at @s run gamemode spectator @s
execute if entity @s[scores={gameTime=49..50}] if entity @e[tag=cheats,type=armor_stand,tag=45a] as @a[tag=playing] at @s run gamemode adventure @s
execute if entity @s[scores={gameTime=51..159}] as @e[tag=activeplayer] at @s run tp @s @e[limit=1,distance=..50,sort=nearest,tag=node,tag=playerstart,tag=!psBattle]
execute if entity @s[scores={gameTime=52}] run effect clear @a blindness
execute if entity @s[scores={gameTime=52}] run effect give @a blindness 1 10 true
tag @s[tag=!ignoreCalc,scores={gameTime=100}] add calcStart
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime 0
execute if entity @s[scores={gameTime=100}] run scoreboard players set @e[tag=ai] aiStuckTime2 0
execute if entity @s[scores={gameTime=50}] as @e[tag=playing] at @s run function sprint_racer:game_logic/1/self_scoreboard_setup
execute if entity @s[scores={gameTime=50}] as @e[tag=ai] at @s run function sprint_racer:game_logic/1/self_scoreboard_setup_ai
execute if entity @s[scores={gameTime=80..100}] run scoreboard players set @e[tag=activeplayer] resetCooldown 80
execute if entity @s[scores={gameTime=100}] as @a[gamemode=adventure] at @s run spawnpoint @s ~ ~1 ~
execute if entity @s[scores={gameTime=120}] run scoreboard objectives setdisplay sidebar


#reset speeds and heal players at "GO!"
execute if entity @s[scores={gameTime=160}] run scoreboard players set @s[scores={timeRemaining=..50}] timeRemaining 4800
execute if entity @s[scores={gameTime=160}] run function sprint_racer:reset_speeds
execute if entity @s[scores={gameTime=160}] run team modify player seeFriendlyInvisibles false
execute if entity @s[scores={gameTime=160}] run function sprint_racer:game_logic/1/start_clear_effects
execute if entity @s[scores={gameTime=160}] run effect clear @e[tag=ai]
execute if entity @s[scores={gameTime=160}] run effect give @a resistance 1 100 true
execute if entity @s[scores={gameTime=160}] run scoreboard players set @e[tag=ai] invisibility 2
execute if entity @s[scores={gameTime=160}] run tag @e[tag=ai] add remote_inherit_nearest
execute if entity @s[scores={gameTime=160}] run tag @a[tag=noInventory] remove noInventory
execute if entity @s[scores={gameTime=160}] run tag @a[limit=1] add spdbump
execute if entity @s[scores={gameTime=160}] as @a run function sprint_racer:save_coordinates

#start music and credits sequence
execute if entity @s[scores={gameTime=50}] run function sprint_racer:game_logic/12/start_credits_sequence
execute if entity @s[scores={gameTime=60}] run function sprint_racer:music/global/pick_track

#try to avoid the spawn bed obstruction bug
execute if entity @s[scores={gameTime=160}] run function sprint_racer:new_spawnpoint