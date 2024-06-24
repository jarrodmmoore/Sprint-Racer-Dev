#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[type=armor_stand,scores={gameTime=200..}] run function sprint_racer:game_logic/7/end_game_logic

#delayed showing of a player's final results since they eat up a lot of the screen
scoreboard players remove @a[scores={lapShowDelay=1..}] lapShowDelay 1
execute as @a[tag=finished,scores={lapShowDelay=1}] at @s run function sprint_racer:game_logic/1/record_lap/show_final_results_delayed

#item stuff
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/7/item_stuff
function sprint_racer:items/container_tick_time_attack

#starting countdown
execute as @s[scores={gameTime=..240}] run function sprint_racer:game_logic/7/start_countdown

#global timer
execute as @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/7/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#lap animation
#execute as @a[tag=playing,scores={lapAnimation=1..}] at @s run function sprint_racer:game_logic/1/lap_animation/index