#do nothing if not in proper gamestate!
execute unless score @s gameState matches 3 run return 0
#=====

#sequence starts at gameTime=100000
scoreboard players set @s[scores={gameTime=..99999}] gameTime 100000

kill @e[tag=trap]
kill @e[type=tnt]

#calculate ranks RIGHT NOW!
function sprint_racer:game_logic/3/fast_rank_calc/_start

execute if entity @s[scores={gameTime=100000}] run scoreboard players set @s specJoinTime 0

#clear displays and stuff
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:speedometer/enable_xp_bar
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:clear_bossbars
execute if entity @s[scores={gameTime=100000}] run scoreboard players set @a gAppleTime 0
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:ai/general/ai_disable_all
execute if entity @s[scores={gameTime=100000}] run gamemode spectator @a
execute if entity @s[scores={gameTime=100000}] run function sprint_racer_language:gameplay/battle_end/time_up
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:music/global/stop_music
execute if entity @s[scores={gameTime=100000..100010}] run bossbar set timeremaining players
execute if entity @s[scores={gameTime=100000}] run title @a subtitle [""]
execute if entity @s[scores={gameTime=100000}] run title @a title [""]
execute if entity @s[scores={gameTime=100000}] run title @a actionbar [""]
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 100000 run scoreboard players set @s gameTime 100040

execute if entity @s[scores={gameTime=100040}] run scoreboard objectives setdisplay sidebar
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 100000 run scoreboard players set @s gameTime 100060

execute if entity @s[scores={gameTime=100060}] run function sprint_racer_language:gameplay/battle_end/battle_ended_text
execute if entity @s[tag=!noCrowdSFX,scores={gameTime=100060}] if score grandprix gameState matches 1 as @a at @s run function sprint_racer:grand_prix/crowd_cheer
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 100060 run scoreboard players set @s gameTime 100100

#custom track testing, send back to editor
execute if entity @s[tag=customTesting,scores={gameTime=100110}] run function sprint_racer:game_logic/10/_initialize

execute if entity @s[scores={gameTime=100120}] run function sprint_racer:game_logic/3/add_points
execute if entity @s[tag=!teamplay,scores={gameTime=100120}] run function sprint_racer:load_saved_points
execute if entity @s[tag=!teamplay,scores={gameTime=100120}] run function sprint_racer_language:gameplay/battle_end/battle_give_points
execute if entity @s[tag=teamplay,scores={gameTime=100120}] run function sprint_racer_language:_dlc_2/gameplay/battle_end/battle_give_points_teams
execute if entity @s[scores={gameTime=100120}] run function sprint_racer:ai/general/round_finish_level_shift

execute if entity @s[scores={gameTime=100160}] run function sprint_racer_language:_dlc_2/gameplay/battle_end/increment_points
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 100180 run scoreboard players set @s gameTime 100258

execute if entity @s[scores={gameTime=100259}] run tag @s[tag=optChoose] add skiptochoose
execute if entity @s[scores={gameTime=100259}] run scoreboard players add @s roundNumber 1
execute if entity @s[scores={gameTime=100259}] run scoreboard players add @s roundNumber2 1
execute if entity @s[scores={gameTime=100259}] run scoreboard players add @a maturity 1
execute if entity @s[scores={gameTime=100260..}] run function sprint_racer:game_logic/0/_initialize