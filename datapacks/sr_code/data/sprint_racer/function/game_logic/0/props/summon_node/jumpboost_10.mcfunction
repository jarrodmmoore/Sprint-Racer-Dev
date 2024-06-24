summon marker ~ ~ ~ {Tags:["setup","node","jumpboost","lobbyprop"]}

scoreboard players set @e[type=marker,tag=setup,limit=1,sort=nearest] jump 10

#name self
execute as @e[type=marker,tag=setup,limit=1,sort=nearest] run function sprint_racer_language:_dlc_2/name_lobby_node

tag @e[type=marker,tag=setup,limit=1,sort=nearest] remove setup