execute if entity @s[scores={gameTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute if entity @s[scores={gameTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
function sprint_racer_language:lobby/next_round_countdown_choose_track
bossbar set minecraft:menutimer color white