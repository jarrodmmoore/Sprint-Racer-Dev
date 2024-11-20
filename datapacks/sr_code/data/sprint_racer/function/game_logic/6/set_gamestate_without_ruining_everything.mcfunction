tag @e[tag=doinTimeAttack] remove doinTimeAttack

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=..2}] run tag @s add goto7 
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3..}] run tag @s add goto8

execute if entity @s[tag=goto7] run function sprint_racer:game_logic/7/_initialize
execute if entity @s[tag=goto8] run function sprint_racer:game_logic/8/_initialize

tag @s remove goto7
tag @s remove goto8