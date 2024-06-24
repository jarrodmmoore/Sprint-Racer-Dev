execute if entity @s[scores={lapAnimation=1}] run function sprint_racer:game_logic/1/lap_animation/start
execute if entity @s[tag=!finallap,scores={lapAnimation=2..}] run function sprint_racer_language:_dlc_1/gameplay/lap_animation/generic_lap
execute if entity @s[tag=finallap,scores={lapAnimation=2..}] run function sprint_racer_language:gameplay/lap_animation/final_lap

scoreboard players add @s lapAnimation 1
scoreboard players set @s[scores={lapAnimation=43..}] lapAnimation 0