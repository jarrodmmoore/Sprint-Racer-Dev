#only 1 player remaining in 1st place? they win.
scoreboard players set #math value 0
execute as @a[tag=playing,tag=!eliminated] run scoreboard players add #math value 1
execute as @e[tag=ai] run scoreboard players add #math value 1

execute if score #math value matches 1 run scoreboard players add #permadeathEnd value 1
execute unless score #math value matches 1 run scoreboard players set #permadeathEnd value 0

execute if score #permadeathEnd value matches 40.. as @a[tag=playing,tag=!eliminated,tag=!finished,scores={racePosDisplay=1}] at @s run function sprint_racer:game_logic/1/player_finish
execute if score #permadeathEnd value matches 40.. as @e[tag=ai,scores={racePosDisplay=1}] at @s run function sprint_racer:game_logic/1/ai_finish