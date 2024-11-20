tag @s add afk

tag @s remove playing

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..3}] run gamemode spectator @s
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..3}] run team join spectator @s
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7..8}] run gamemode spectator @s
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7..8}] run team join spectator @s

clear @s

scoreboard players reset @s points
scoreboard players reset @s racePosDisplay
scoreboard players reset @s racePosDisplay2
scoreboard players reset @s KOs
scoreboard players reset @s pressJump

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=..5}] run function sprint_racer_language:afk_start
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=6..8}] run function sprint_racer_language:_dlc_1/afk_start_ta