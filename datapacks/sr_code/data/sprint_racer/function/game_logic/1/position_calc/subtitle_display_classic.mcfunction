execute as @a[tag=playing,tag=!finished,tag=!miniHUD,scores={racePosDisplay=1,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/1
execute as @a[tag=playing,tag=!finished,tag=!miniHUD,scores={racePosDisplay=2,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/2
execute as @a[tag=playing,tag=!finished,tag=!miniHUD,scores={racePosDisplay=3,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/3
execute as @a[tag=playing,tag=!finished,tag=!miniHUD,scores={racePosDisplay=4..20,subtitleDelay=..0}] run function sprint_racer_language:gameplay/position_display/4_20
execute if entity @a[tag=playing,tag=!finished,tag=!miniHUD,scores={racePosDisplay=21..,subtitleDelay=..0}] run function sprint_racer:game_logic/1/position_calc/21_and_up

title @a[tag=playing,tag=!finished,scores={racePosDisplay=..0,subtitleDelay=..0}] subtitle [""]
title @a[tag=playing,tag=!finished,tag=miniHUD,scores={subtitleDelay=..0}] subtitle [""]