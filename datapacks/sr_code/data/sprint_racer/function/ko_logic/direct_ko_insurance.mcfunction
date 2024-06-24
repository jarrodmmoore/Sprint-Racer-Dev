scoreboard players add @s playerKO 1

execute if entity @s[scores={playerKO=5..}] at @s run function sprint_racer:ko_logic/direct_ko_get