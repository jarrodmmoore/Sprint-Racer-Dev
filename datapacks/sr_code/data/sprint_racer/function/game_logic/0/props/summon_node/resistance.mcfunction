summon marker ~ ~ ~ {Tags:["setup","node","resistance","lobbyprop"]}

#scoreboard players set @e[type=marker,tag=setup,limit=1,sort=nearest] itemchestSeedA 1
#scoreboard players set @e[type=marker,tag=setup,limit=1,sort=nearest] itemchestSeedB 16

#name self
execute as @e[type=marker,tag=setup,limit=1,sort=nearest] run function sprint_racer_language:_dlc_2/name_lobby_node

tag @e[type=marker,tag=setup,limit=1,sort=nearest] remove setup