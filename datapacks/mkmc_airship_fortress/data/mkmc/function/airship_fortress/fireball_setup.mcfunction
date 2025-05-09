particle explosion ~ ~.3 ~ 0 0 0 1 0 force @a
function sprint_racer:explode_sound_effect {volume:3,pitch:".88"}
scoreboard players set @s lifespan 100
tag @s remove setBall