execute if entity @s[scores={gameTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @e[tag=w,type=armor_stand,limit=1] gameTime
execute if entity @s[scores={gameTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @e[tag=w,type=armor_stand,limit=1] gameTime
function sprint_racer_language:_dlc_3/lobby/next_round_countdown_grand_prix
bossbar set minecraft:menutimer color white