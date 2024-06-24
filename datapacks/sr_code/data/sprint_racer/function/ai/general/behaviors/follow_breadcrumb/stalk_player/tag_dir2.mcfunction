scoreboard players operation global math = @s AIBC_dir2

execute as @e[type=marker,sort=nearest,tag=AIBC,tag=!AIBC_deadend] if score @s AIBC_id = global math run tag @s add possible_d

scoreboard players set @e[limit=1,type=marker,sort=nearest,tag=AIBC,tag=possible_d] dir_checker 2

tag @e[type=marker,sort=nearest,tag=AIBC,tag=!AIBC_deadend] remove possible_d