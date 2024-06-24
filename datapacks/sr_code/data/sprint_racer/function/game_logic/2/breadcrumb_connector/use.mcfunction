execute positioned ~ ~1 ~ positioned ^ ^ ^3 run tag @e[limit=1,type=marker,tag=AIBC,sort=nearest,distance=..10] add aibc_nearby

#optimal path source
execute if entity @s[scores={settingPath=-1,inputCooldown=..0}] if entity @e[type=marker,scores={pathSource=1}] run function sprint_racer:game_logic/2/breadcrumb_connector/set_path_optimal_spread

#optimal path end
execute if entity @s[scores={settingPath=-1,inputCooldown=..0}] unless entity @e[type=marker,scores={pathSource=1}] run function sprint_racer:game_logic/2/breadcrumb_connector/set_path_source

#clear paths
execute if entity @s[scores={settingPath=0}] as @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] at @s run function sprint_racer:game_logic/2/breadcrumb_connector/clear_direction

#path end
execute if entity @s[scores={settingPath=1..,inputCooldown=..0}] if entity @e[type=marker,scores={pathSource=1}] run function sprint_racer:game_logic/2/breadcrumb_connector/set_path_end

#path source
execute if entity @s[scores={settingPath=1..,inputCooldown=..0}] unless entity @e[type=marker,scores={pathSource=1}] run function sprint_racer:game_logic/2/breadcrumb_connector/set_path_source

tag @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] remove aibc_nearby