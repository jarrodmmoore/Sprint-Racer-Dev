execute if entity @s[scores={gameTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute if entity @s[scores={gameTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute unless score #round_game_type value matches 2 run function sprint_racer_language:lobby/next_round_countdown_race
execute unless score #round_game_type value matches 2 run bossbar set minecraft:menutimer color blue
execute if score #round_game_type value matches 2 run function sprint_racer_language:lobby/next_round_countdown_battle
execute if score #round_game_type value matches 2 run bossbar set minecraft:menutimer color red