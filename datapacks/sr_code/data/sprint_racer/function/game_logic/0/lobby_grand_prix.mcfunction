execute if entity @s[scores={gameTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameTime
execute if entity @s[scores={gameTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameTime
function sprint_racer_language:_dlc_3/lobby/next_round_countdown_grand_prix
bossbar set minecraft:menutimer color white