execute positioned ~ ~1 ~ positioned ^ ^ ^3 as @e[limit=1,type=marker,tag=AIBC,sort=nearest,distance=..10] at @s run particle block{block_state:"minecraft:oak_wood"} ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[gamemode=creative]

#draw particles
execute if entity @s[scores={settingPath=1..}] if score global pathSource matches 1 if entity @e[limit=1,type=marker,tag=AIBC,sort=nearest,scores={pathSource=1}] positioned ~ ~1 ~ positioned ^ ^ ^3 facing entity @e[limit=1,type=marker,tag=AIBC,sort=nearest,scores={pathSource=1}] feet run function sprint_racer:game_logic/2/breadcrumb_connector/particles_index
execute if entity @s[scores={settingPath=-1}] if score global pathSource matches 1 if entity @e[limit=1,type=marker,tag=AIBC,sort=nearest,scores={pathSource=1}] positioned ~ ~.2 ~ facing entity @e[limit=1,type=marker,tag=AIBC,sort=nearest,scores={pathSource=1}] feet run function sprint_racer:game_logic/2/breadcrumb_connector/particles_index

#use stick
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] run function sprint_racer:game_logic/2/breadcrumb_connector/use