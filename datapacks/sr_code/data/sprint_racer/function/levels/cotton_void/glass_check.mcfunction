execute if block ~ ~-.2 ~ pink_stained_glass run tag @s add bad

execute if block ~.5 ~-.2 ~.5 pink_stained_glass run tag @s add bad
execute if block ~.5 ~-.2 ~-.5 pink_stained_glass run tag @s add bad
execute if block ~-.5 ~-.2 ~.5 pink_stained_glass run tag @s add bad
execute if block ~-.5 ~-.2 ~-.5 pink_stained_glass run tag @s add bad

execute if entity @s[tag=bad] run function sprint_racer:levels/cotton_void/respawn_pink_glass
tag @s remove bad
