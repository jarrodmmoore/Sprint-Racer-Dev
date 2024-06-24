#add actual points
scoreboard players add @s aiPoints 10
scoreboard players remove @s addPoints 10

#sync with visual
execute if entity @s[scores={rNumber=1}] run scoreboard players operation CPU_1 points = @s aiPoints
execute if entity @s[scores={rNumber=2}] run scoreboard players operation CPU_2 points = @s aiPoints
execute if entity @s[scores={rNumber=3}] run scoreboard players operation CPU_3 points = @s aiPoints
execute if entity @s[scores={rNumber=4}] run scoreboard players operation CPU_4 points = @s aiPoints
execute if entity @s[scores={rNumber=5}] run scoreboard players operation CPU_5 points = @s aiPoints
execute if entity @s[scores={rNumber=6}] run scoreboard players operation CPU_6 points = @s aiPoints
execute if entity @s[scores={rNumber=7}] run scoreboard players operation CPU_7 points = @s aiPoints
execute if entity @s[scores={rNumber=8}] run scoreboard players operation CPU_8 points = @s aiPoints
execute if entity @s[scores={rNumber=9}] run scoreboard players operation CPU_9 points = @s aiPoints