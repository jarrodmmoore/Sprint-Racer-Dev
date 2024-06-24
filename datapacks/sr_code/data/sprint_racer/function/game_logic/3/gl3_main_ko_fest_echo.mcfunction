#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=0..}] timeRemaining 1
execute if entity @s[scores={gameTime=200..}] run function sprint_racer:game_logic/3/end_game_logic_timed

#item stuff and score displays
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..,timeRemaining=1..}] run function sprint_racer:game_logic/3/once_per_second_stuff
execute unless entity @s[scores={gamemodePresetB=3}] run function sprint_racer:items/container_tick
execute if entity @s[scores={gamemodePresetB=3}] run function sprint_racer:items/container_tick_resource_control

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/3/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..,timeRemaining=0..}] run function sprint_racer:game_logic/3/global_timer
execute if entity @s[scores={oTimer=1,timeRemaining=0..}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#boundary stuff
execute if entity @s[scores={gameTime=160..}] as @a[tag=playing,gamemode=!spectator] at @s run function sprint_racer:game_logic/3/boundaries