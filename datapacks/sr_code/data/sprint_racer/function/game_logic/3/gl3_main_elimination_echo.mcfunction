#timer stuff
scoreboard players add @s gameTime 1
execute unless entity @a[tag=playing,scores={playerState=2}] run scoreboard players remove @s[scores={timeRemaining=-2000..}] timeRemaining 1
execute if entity @s[scores={gameTime=200..}] run function sprint_racer:game_logic/3/elimination/end_game_logic

#item stuff and score displays
execute if entity @s[scores={oTimer=0,currentTimeMsec=0,gameTime=160..99999}] run function sprint_racer:game_logic/3/elimination/once_per_second_stuff
function sprint_racer:items/container_tick

#red flash for last place's position display (the HUD will handle the rest of this)
scoreboard players add #lastPlaceFlash value 1
execute if score #lastPlaceFlash value matches 21.. run scoreboard players set #lastPlaceFlash value 1

#starting countdown
execute if entity @s[scores={gameTime=..240}] run function sprint_racer:game_logic/3/start_countdown

#global timer
execute if entity @s[scores={gameTime=160..99999}] run function sprint_racer:game_logic/3/global_timer
execute if entity @s[scores={oTimer=1,gameTime=..99999}] run scoreboard players add @a[tag=playing,tag=!finished] currentTime 1

#boundary stuff
execute if entity @s[scores={gameTime=160..}] as @a[tag=playing,gamemode=!spectator] at @s run function sprint_racer:game_logic/3/boundaries