tag @e[tag=firstplace,scores={racePosDisplay=2..}] remove firstplace

execute as @a[tag=playing,tag=!finished,scores={racePosDisplay=1,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/1
execute as @a[tag=playing,tag=!finished,scores={racePosDisplay=2,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/2
execute as @a[tag=playing,tag=!finished,scores={racePosDisplay=3,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/3
execute as @a[tag=playing,tag=!finished,scores={racePosDisplay=4..20,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/4_20
execute if entity @a[tag=playing,tag=!finished,scores={racePosDisplay=21..,subtitleDelay=..0}] run function sprint_racer:game_logic/1/position_calc/21_and_up

scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1

title @a[tag=playing,tag=!finished,scores={racePosDisplay=..0,subtitleDelay=..0}] subtitle [""]
title @a[tag=playing,tag=!finished,scores={lapAnimation=..0}] title [""]