#y=0 is checked first for ALL players
execute as @e[tag=activeplayer] at @s run function sprint_racer:game_logic/1/nav/y0

#y=1 and upward is for specific checkpoints, this overrides y0 if something is found there
execute as @e[tag=activeplayer,scores={check=0}] at @s run function sprint_racer:game_logic/1/nav/y1
execute as @e[tag=activeplayer,scores={check=1}] at @s run function sprint_racer:game_logic/1/nav/y2
execute as @e[tag=activeplayer,scores={check=2}] at @s run function sprint_racer:game_logic/1/nav/y3
execute as @e[tag=activeplayer,scores={check=3}] at @s run function sprint_racer:game_logic/1/nav/y4
execute as @e[tag=activeplayer,scores={check=4}] at @s run function sprint_racer:game_logic/1/nav/y5
execute as @e[tag=activeplayer,scores={check=5}] at @s run function sprint_racer:game_logic/1/nav/y6
execute as @e[tag=activeplayer,scores={check=6}] at @s run function sprint_racer:game_logic/1/nav/y7
execute as @e[tag=activeplayer,scores={check=7}] at @s run function sprint_racer:game_logic/1/nav/y8
execute as @e[tag=activeplayer,scores={check=8}] at @s run function sprint_racer:game_logic/1/nav/y9
execute as @e[tag=activeplayer,scores={check=9}] at @s run function sprint_racer:game_logic/1/nav/y10
execute as @e[tag=activeplayer,scores={check=10}] at @s run function sprint_racer:game_logic/1/nav/y11
execute as @e[tag=activeplayer,scores={check=11}] at @s run function sprint_racer:game_logic/1/nav/y12