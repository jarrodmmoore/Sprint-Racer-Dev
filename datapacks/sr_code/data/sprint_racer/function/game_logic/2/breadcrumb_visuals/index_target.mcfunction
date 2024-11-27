#this is being used now since there are 625 ids instead of 25
scoreboard players operation global math = @s AIBC_dir1
execute as @e[type=marker,tag=AIBC,distance=..100] if score @s AIBC_id = global math run tag @s add go_here

scoreboard players set @s lifespan 10
execute if entity @e[limit=1,tag=AIBC,tag=go_here] run tp @s ^ ^ ^1 facing entity @e[limit=1,sort=nearest,distance=..100,tag=AIBC,tag=go_here] feet
execute unless entity @e[tag=AIBC,type=marker,distance=..100,tag=go_here] run scoreboard players set @s lifespan 0
execute if entity @e[tag=AIBC,type=marker,distance=..2,tag=go_here] run scoreboard players set @s lifespan 0

tag @e[tag=go_here,type=marker,distance=..101] remove go_here