execute if entity @s[scores={gameTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute if entity @s[scores={gameTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute if entity @s[scores={roundNumber=..4}] run function sprint_racer_language:lobby/next_round_countdown_race
execute if entity @s[scores={roundNumber=..4}] run bossbar set minecraft:menutimer color blue
execute if entity @s[scores={roundNumber=5}] run function sprint_racer_language:lobby/next_round_countdown_battle
execute if entity @s[scores={roundNumber=5}] run bossbar set minecraft:menutimer color red