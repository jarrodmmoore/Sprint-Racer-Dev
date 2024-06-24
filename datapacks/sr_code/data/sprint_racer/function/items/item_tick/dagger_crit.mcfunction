function sprint_racer_language:gameplay/misc_item_text/critical_hit_white
execute if entity @s[tag=!ai,scores={invulTime=..0}] run kill @s
execute if entity @s[tag=ai,scores={invulTime=..0}] run data merge entity @s {Health:999}
tag @s remove swordCrit