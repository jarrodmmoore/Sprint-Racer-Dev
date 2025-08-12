#executed by the item_display that is duct-taped to the item chest armor stand

#it would be better to just cut out the middleman and have the item_display do everything itself
#but
#1) this would require a ton of changes in the code and i'm lazy
#2) switching out what is now 6-year-old code would change hit detection at least a little bit, and for the sake of Time Attack players I'd rather just not mess with that

#stay alive as long as this is running
scoreboard players set @s lifespan 3

#spin. looks cool. makes modified clients s*** themselves but they were warned to play vanilla so sorry not sorry
scoreboard players add @s AIBC_dir3 1
execute if score @s AIBC_dir3 matches 82.. run scoreboard players set @s AIBC_dir3 1
execute if score @s AIBC_dir3 matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.707f,0.0f,0.707f],translation:[0.0f,-0.21f,0.0f],scale:[0.6f,0.6f,0.6f]}}
execute if score @s AIBC_dir3 matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,0.0f],translation:[0.0f,-0.3f,0.0f],scale:[0.6f,0.6f,0.6f]}}
execute if score @s AIBC_dir3 matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.0f,-0.3f,0.0f],scale:[0.6f,0.6f,0.6f]}}
execute if score @s AIBC_dir3 matches 41 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-0.707f,0.0f,0.707f],translation:[0.0f,-0.39f,0.0f],scale:[0.6f,0.6f,0.6f]}}
execute if score @s AIBC_dir3 matches 61 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.3f,0.0f],scale:[0.6f,0.6f,0.6f]}}

#old heights
#0.19
#0.1
#0.1
#0.01
#0.1