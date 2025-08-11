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
execute if entity @s[scores={gameTime=-48..50,gameState=7..8}] run function sprint_racer:game_logic/7/loading_animation
execute if entity @s[scores={gameTime=51..55}] run title @a subtitle [""]
execute if entity @s[scores={gameTime=51..55}] run title @a title [""]

#kill any old item containers and traps that might be knocking about
execute if entity @s[scores={gameTime=40}] run kill @e[tag=itemcontainer]
execute if entity @s[scores={gameTime=40}] run kill @e[tag=trap]
execute if entity @s[scores={gameTime=40}] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}]
execute if entity @s[scores={gameTime=160}] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}]

#keep players from flying about while the track loads
execute if entity @s[scores={gameTime=-40}] at @s as @a[limit=1,sort=furthest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["RHoldPlayers"]}
execute if entity @s[scores={gameTime=-40}] run gamemode adventure @a
execute if entity @s[scores={gameTime=-40}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @s[scores={gameTime=-40..49}] run function sprint_racer:hold_players_in_place


execute if entity @s[scores={gameTime=90}] run function sprint_racer:game_logic/8/setup_medal_times
execute if entity @s[scores={gameTime=50}] run team modify player seeFriendlyInvisibles true
execute if entity @s[scores={gameTime=50}] run function sprint_racer:game_logic/8/find_playerstart_main
execute if entity @s[scores={gameTime=50}] run effect clear @a night_vision
execute if entity @s[scores={gameTime=51}] as @a[tag=!playing] at @s run function sprint_racer:game_logic/8/spectators_setup
execute if entity @s[scores={gameTime=51..159}] as @e[tag=activeplayer] at @s if entity @e[type=marker,tag=playerstart,distance=..150,tag=node,tag=psTimeAttack,tag=psBattle] run tp @s @e[limit=1,distance=..150,sort=nearest,tag=node,tag=playerstart,tag=psTimeAttack,tag=psBattle]
execute if entity @s[scores={gameTime=51..159}] as @e[tag=activeplayer] at @s unless entity @e[type=marker,tag=playerstart,distance=..150,tag=node,tag=psTimeAttack,tag=psBattle] run tp @s @e[limit=1,distance=..150,sort=nearest,tag=node,tag=playerstart,tag=psBattle]
execute if entity @s[scores={gameTime=50..159}] run effect give @a[tag=playing] invisibility 15 1 true
execute if entity @s[scores={gameTime=52}] run effect clear @a blindness
execute if entity @s[scores={gameTime=52}] run effect give @a blindness 1 10 true
execute if entity @s[scores={gameTime=100}] run function sprint_racer_language:_dlc_1/gameplay/ta_setup_target_bossbar
execute if entity @s[scores={gameTime=100}] run function sprint_racer:announce_gamemode/6_time_attack_battle
execute if entity @s[scores={gameTime=50}] run gamemode adventure @a[tag=playing,tag=!spectate]
execute if entity @s[scores={gameTime=50}] as @a[tag=playing] at @s run function sprint_racer:game_logic/8/self_scoreboard_setup
execute if entity @s[scores={gameTime=140..160}] run scoreboard players set @e[tag=activeplayer] resetCooldown 80
execute if entity @s[scores={gameTime=160}] as @a[gamemode=adventure] at @s run spawnpoint @s ~ ~1 ~
execute if entity @s[scores={gameTime=180}] run scoreboard objectives setdisplay sidebar medalsTR
#hide sidebar if there's nothing to show on it
execute if entity @s[scores={gameTime=180}] unless score @s bronzeTR matches 1.. unless score @s silverTR matches 1.. unless score @s goldTR matches 1.. unless score @s diamondTR matches 1.. unless score @s bestTR matches 1.. run scoreboard objectives setdisplay sidebar

#show special starting countdown based on the value of "startType"
execute if entity @s[scores={gameTime=90..}] run function sprint_racer_language:gameplay/start_countdown/0

#specialized start countdown stuff for individual tracks
execute if entity @s[scores={gameTime=0..240}] as @e[tag=chosenTrack] run function sprint_racer:levels/_index_levels_battle_start_countdown


#kill missiles and other lingering stuff
execute if score @s gameTime matches ..159 run kill @e[tag=trap]
execute if score @s gameTime matches ..159 run kill @e[type=tnt]
execute if score @s gameTime matches ..159 run kill @e[tag=missile,type=armor_stand]

#reset speeds and heal players at "GO!"
execute if entity @s[scores={gameTime=160}] run scoreboard players set @s[scores={timeRemaining=..50}] timeRemaining 4800
execute if entity @s[scores={gameTime=160}] run function sprint_racer:reset_speeds
execute if entity @s[scores={gameTime=160}] run team modify player seeFriendlyInvisibles true
execute if entity @s[scores={gameTime=160}] run effect give @a resistance 1 100 true
execute if entity @s[scores={gameTime=160}] run tag @a[tag=noInventory] remove noInventory
execute if entity @s[scores={gameTime=160}] run tag @a[limit=1] add spdbump
execute if entity @s[scores={gameTime=160}] as @a run function sprint_racer:save_coordinates
execute if entity @s[scores={gameTime=160}] as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#show locator bar after "GO!"
execute if entity @s[scores={gameTime=160}] run function sprint_racer:speedometer/disable_xp_bar

#start music after "GO!"
execute if entity @s[scores={gameTime=160}] run function sprint_racer:music/global/pick_track

#try to avoid the spawn bed obstruction bug
execute if entity @s[scores={gameTime=160}] run function sprint_racer:new_spawnpoint

#no items on? give some ender pearls to make sure certain levels are possible
#THIS WAS CUT, targets not possible without items will now automatically burst themselves
#execute if entity @s[scores={gameTime=160},tag=taNoItems,tag=!noBonusItems] as @a[tag=playing,limit=1,sort=random] run function sprint_racer:game_logic/8/give_ender_pearls