#get x y z coords
execute as @s store result score @s coord_x run data get entity @s Pos[0] 1
execute as @s store result score @s coord_y run data get entity @s Pos[1] 1
execute as @s store result score @s coord_z run data get entity @s Pos[2] 1

execute if entity @s[scores={coord_x=1576..1585,coord_y=108..109,coord_z=451..453}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_row_1_index
execute if entity @s[scores={coord_x=1576..1585,coord_y=106..107,coord_z=451..453}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_row_2_index
execute if entity @s[scores={coord_x=1576..1585,coord_y=104..105,coord_z=451..453}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_row_3_index
execute if entity @s[scores={coord_x=1578..1584,coord_y=102..103,coord_z=451..453}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_row_4_index

execute if entity @s[tag=!ded] run particle large_smoke ~ ~ ~ .1 .1 .1 .01 5