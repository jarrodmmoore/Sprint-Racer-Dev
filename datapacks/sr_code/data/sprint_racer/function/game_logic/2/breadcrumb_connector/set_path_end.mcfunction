execute if entity @s[scores={settingPath=1}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] AIBC_dir1 = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id
execute if entity @s[scores={settingPath=2}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] AIBC_dir2 = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id
execute if entity @s[scores={settingPath=3}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] AIBC_dir3 = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id
execute if entity @s[scores={settingPath=4}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] AIBC_dir4 = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id

execute as @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] unless entity @s[scores={AIBC_dir1=0,AIBC_dir2=0,AIBC_dir3=0,AIBC_dir4=0}] run tag @s remove AIBC_deadend

#only change path 5 if AIBC_event of source node has an applicable event condition
execute if entity @s[scores={settingPath=5}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1,AIBC_event=2..6}] AIBC_condition = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id
execute if entity @s[scores={settingPath=5}] run scoreboard players operation @e[type=marker,limit=1,sort=nearest,scores={pathSource=1,AIBC_event=10..12}] AIBC_condition = @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] AIBC_id

#feedback
execute at @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] run particle happy_villager ~ ~.2 ~ 0.2 0.2 0.2 1 20 force @a[gamemode=creative]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.9

scoreboard players set @s inputCooldown 6

scoreboard objectives remove pathSource