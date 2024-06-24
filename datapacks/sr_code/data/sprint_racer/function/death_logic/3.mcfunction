execute if entity @s[scores={death=1..}] run effect give @s minecraft:blindness 2 0 true
execute unless score #halftick value matches 1 if entity @s[scores={death=10..,hp=1..}] run effect clear @s blindness
execute unless score #halftick value matches 1 if entity @s[scores={death=10..,hp=1..}] run effect give @s minecraft:blindness 1 1 true
execute if score #halftick value matches 1 if entity @s[scores={death=5..,hp=1..}] run effect clear @s blindness
execute if score #halftick value matches 1 if entity @s[scores={death=5..,hp=1..}] run effect give @s minecraft:blindness 1 1 true

#respawn
execute unless score #halftick value matches 1 if entity @s[scores={death=10..,hp=1..}] at @s run function sprint_racer:game_logic/3/respawn
execute if score #halftick value matches 1 if entity @s[scores={death=5..,hp=1..}] at @s run function sprint_racer:game_logic/3/respawn

scoreboard players set @s subtitleDelay 30
function sprint_racer_language:_dlc_1/you_died_title