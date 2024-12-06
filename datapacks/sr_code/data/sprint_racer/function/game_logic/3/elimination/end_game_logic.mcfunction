execute if entity @s[scores={timeRemaining=1220}] run function sprint_racer_language:gameplay/battle_end/60_sec_warning
execute if entity @s[scores={timeRemaining=620}] run function sprint_racer_language:gameplay/battle_end/30_sec_warning

#ding ding (round's boutta end)
execute if score @s timeRemaining matches 90 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.2
execute if score @s timeRemaining matches 70 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.3
execute if score @s timeRemaining matches 50 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.4
execute if score @s timeRemaining matches 30 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.5
execute if score @s timeRemaining matches 10 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.6

#show time when time remaining is 1:00 or less
execute unless entity @a[tag=playing,scores={playerState=2}] if entity @s[scores={timeRemaining=0..1210}] run function sprint_racer:game_logic/3/elimination/battle_end_timer

#only 1 player remains, start the end sequence (60 ticks with <2 active players)
scoreboard players set @s[scores={gameTime=..200}] timeOut 1
scoreboard players add @s timeOut 1
execute if entity @s[tag=!teamplay] run function sprint_racer:game_logic/3/elimination/check_for_players
execute if entity @s[tag=teamplay] run function sprint_racer:game_logic/3/elimination/check_for_missing_team
execute if entity @s[tag=customTesting] unless entity @a[tag=!forcespectate,gamemode=spectator] run scoreboard players set @s timeOut 0
execute if entity @s[scores={timeOut=60..}] run scoreboard players set @s timeRemaining -9999

#SUDDEN DEATH if two players are alive when timer runs out
execute if entity @s[tag=!suddenDeath,scores={timeOut=..1,timeRemaining=..0,gameTime=..99999}] run function sprint_racer:game_logic/3/sudden_death/begin
execute if entity @s[tag=suddenDeath,scores={gameTime=200..99999}] run function sprint_racer:game_logic/3/sudden_death/main

#only AI are left? skip to sudden death.
execute unless entity @s[tag=allowAIfinish] unless entity @a[tag=playing,tag=!eliminated] if entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=!aiDisable] if entity @s[scores={timeRemaining=101..}] run function sprint_racer:game_logic/3/elimination/skip_to_sudden_death

#end sequence
execute if entity @s[scores={timeRemaining=..-9999}] run function sprint_racer:game_logic/3/elimination/end_sequence