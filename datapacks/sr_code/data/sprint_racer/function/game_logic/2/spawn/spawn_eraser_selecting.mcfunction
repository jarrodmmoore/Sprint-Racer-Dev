execute as @e[limit=1,type=creeper,tag=killme] at @s as @e[tag=node,tag=selected] at @s run particle large_smoke ~ ~1 ~ .2 .4 .2 0 20
execute as @e[limit=1,type=creeper,tag=killme] at @s run kill @e[tag=node,tag=selected]
execute as @e[limit=1,type=creeper,tag=killme] at @s run data merge entity @s {Fuse:0}
execute as @e[limit=1,type=creeper,tag=killme] at @s run function sprint_racer:explode_sound_effect {volume:2,pitch:1}

function sprint_racer_language:editor_mode/erased_selected_nodes