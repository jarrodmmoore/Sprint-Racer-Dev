tag @s remove need_admin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run tag @s add need_admin

#admin mode is NOT on, anyone can execute
execute if entity @s[tag=!need_admin] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:game_logic/0/choose_track_return_to_lobby

#admin mode is ON, must be admin to execute
execute if entity @s[tag=need_admin] if entity @s[tag=admin] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:game_logic/0/choose_track_return_to_lobby
execute if entity @s[tag=need_admin] unless entity @s[tag=admin] run function sprint_racer_language:_dlc_3/lobby/admin_must_exit

tag @s remove need_admin