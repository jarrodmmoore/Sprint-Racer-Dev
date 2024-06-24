effect clear @s
effect give @s instant_health 1 1 true

function sprint_racer_language:gameplay/misc_item_text/used_totem

tag @s add noSlow
scoreboard players set @s hitstun 0

scoreboard players reset @s useTotem