#stay alive as long as this is running
scoreboard players set @s lifespan 3

execute if score #test3 value matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-0.707f,0.0f,0.707f],translation:[0.0f,-0.31f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score #test3 value matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.0f,-0.4f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score #test3 value matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,-0.4f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score #test3 value matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.707f,0.0f,0.707f],translation:[0.0f,-0.49f,0.0f],scale:[1.0f,1.0f,1.0f]}}
execute if score #test3 value matches 61 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.4f,0.0f],scale:[1.0f,1.0f,1.0f]}}
