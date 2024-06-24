#sequence starts at gameTime=100000
scoreboard players set @s[scores={gameTime=..99999}] gameTime 100000

execute if entity @s[scores={gameTime=100000}] run scoreboard players set @s specJoinTime 0

execute if entity @s[scores={gameTime=100000}] run function sprint_racer:music/global/stop_music_adventure_mode_only
execute if entity @s[scores={gameTime=100000}] run function sprint_racer:ai/general/ai_disable_all
execute if entity @s[scores={gameTime=100000}] run gamemode spectator @a
execute if entity @s[scores={gameTime=100000..100010}] run bossbar set timeremaining players
#execute if entity @s[scores={gameTime=100000}] run function sprint_racer_language:gameplay/race_end/better_luck_next_time

execute if entity @s[scores={gameTime=10038..10040}] run kill @e[tag=c_cam,type=armor_stand]
execute if entity @s[scores={gameTime=10040}] run tag @s add noskip2next
execute if entity @s[scores={gameTime=10040}] run tag @e[tag=chosenTrack] remove chosenTrack
execute if entity @s[scores={gameTime=10041..}] run function sprint_racer:game_logic/0/_initialize