tag @s remove need_admin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run tag @s add need_admin

#admin mode is NOT on, anyone can choose
execute if entity @s[tag=!need_admin] at @s run function sprint_racer:game_logic/0/worldmap_choose

#admin mode is ON, but no active admin is present so anyone can choose
execute if entity @s[tag=need_admin] unless entity @a[tag=admin,tag=playing,tag=!afk,gamemode=adventure] at @s run function sprint_racer:game_logic/0/worldmap_choose

#admin mode is ON, admin is present, must be admin to choose
execute if entity @s[tag=need_admin] if entity @a[tag=admin,tag=playing,tag=!afk,gamemode=adventure] if entity @s[tag=admin] at @s run function sprint_racer:game_logic/0/worldmap_choose
execute if entity @s[tag=need_admin] if entity @a[tag=admin,tag=playing,tag=!afk,gamemode=adventure] unless entity @s[tag=admin] run function sprint_racer_language:_dlc_3/lobby/admin_must_choose_track

tag @s remove need_admin

#original command
#execute at @s run function sprint_racer:game_logic/0/worldmap_choose