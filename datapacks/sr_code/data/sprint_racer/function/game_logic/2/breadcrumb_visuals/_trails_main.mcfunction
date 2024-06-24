execute as @e[tag=BCtrail] at @s run function sprint_racer:game_logic/2/breadcrumb_visuals/index_target

execute as @e[tag=BCtrail,tag=dir1] at @s run particle dust{color:[0.5,1.0,0.5],scale:2} ~ ~ ~ 0 0 0 1 1
execute as @e[tag=BCtrail,tag=dir2] at @s run particle dust{color:[0.5,0.5,1.0],scale:2} ~ ~ ~ 0 0 0 1 1
execute as @e[tag=BCtrail,tag=dir3] at @s run particle dust{color:[0.0,0.75,0.0],scale:2} ~ ~ ~ 0 0 0 1 1
execute as @e[tag=BCtrail,tag=dir4] at @s run particle dust{color:[0.0,0.0,0.75],scale:2} ~ ~ ~ 0 0 0 1 1
execute as @e[tag=BCtrail,tag=dir5] at @s run particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~ ~ 0 0 0 1 1
execute as @e[tag=BCtrail,tag=pearllook] at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 1