execute if entity @s[scores={timeRemaining=1220}] run function sprint_racer_language:gameplay/battle_end/60_sec_warning
execute if entity @s[scores={timeRemaining=620}] run function sprint_racer_language:gameplay/battle_end/30_sec_warning

#ding ding (round's boutta end)
execute if score @s timeRemaining matches 90 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.2
execute if score @s timeRemaining matches 70 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.3
execute if score @s timeRemaining matches 50 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.4
execute if score @s timeRemaining matches 30 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.5
execute if score @s timeRemaining matches 10 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.6

#always show time in battle mode
execute unless entity @a[tag=playing,scores={playerState=2}] run function sprint_racer:game_logic/3/battle_end_timer

#less than 2 unfinished players remain, start the end sequence (60 ticks without 2 active players)
scoreboard players add @s timeOut 1
execute if entity @s[tag=!teamplay] run function sprint_racer:game_logic/3/check_for_players
execute if entity @s[tag=teamplay] run function sprint_racer:game_logic/3/check_for_missing_team
execute if entity @s[tag=!customTesting,scores={timeOut=60..}] run scoreboard players set @s timeRemaining -1

#allow AI to finish option
execute if entity @s[tag=allowAIfinish,scores={timeOut=5..}] if entity @e[tag=activeplayer] run scoreboard players set @s timeOut 0

#end sequence
execute if entity @s[scores={timeRemaining=..-1}] run function sprint_racer:game_logic/3/end_sequence