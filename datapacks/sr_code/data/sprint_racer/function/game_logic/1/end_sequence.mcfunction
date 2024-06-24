#sequence starts at gameTime=100000
scoreboard players set @s[scores={gameTime=..99999}] gameTime 100000

kill @e[tag=trap]
kill @e[type=tnt]

execute if entity @s[scores={gameTime=100000}] run scoreboard players set @s specJoinTime 0

execute if entity @s[scores={gameTime=100000}] run scoreboard players set @a gAppleTime 0
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:music/global/stop_music_adventure_mode_only
execute if entity @s[scores={gameTime=100000,timeOut=60..}] run tag @s add aiGetsPoints
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:ai/general/ai_disable_all
execute if entity @s[scores={gameTime=100000}] run gamemode spectator @a
execute if entity @s[scores={gameTime=100000..100010}] run function sprint_racer:clear_bossbars
execute if entity @s[scores={gameTime=100000}] run function sprint_racer_language:gameplay/race_end/better_luck_next_time

execute if entity @s[scores={gameTime=100040}] run scoreboard objectives setdisplay sidebar

execute if entity @s[scores={gameTime=100060}] run function sprint_racer_language:gameplay/race_end/race_ended_text

#custom track testing, send back to editor
execute if entity @s[tag=customTesting,scores={gameTime=100110}] run function sprint_racer:game_logic/10/_initialize

execute if entity @s[tag=!teamplay,scores={gameTime=100120}] run function sprint_racer:load_saved_points
execute if entity @s[tag=!teamplay,scores={gameTime=100120}] run function sprint_racer_language:gameplay/race_end/race_give_points
execute if entity @s[tag=teamplay,scores={gameTime=100120}] run function sprint_racer_language:_dlc_2/gameplay/race_end/race_give_points_teams
execute if entity @s[scores={gameTime=100120}] run function sprint_racer:ai/general/round_finish_level_shift

execute if entity @s[scores={gameTime=100160}] run function sprint_racer_language:_dlc_2/gameplay/race_end/increment_points

execute if entity @s[scores={gameTime=100259}] run tag @s[tag=optChoose] add skiptochoose
execute if entity @s[scores={gameTime=100259}] run scoreboard players add @s roundNumber 1
execute if entity @s[scores={gameTime=100259}] run scoreboard players add @a maturity 1
execute if entity @s[scores={gameTime=100260..}] run function sprint_racer:game_logic/0/_initialize