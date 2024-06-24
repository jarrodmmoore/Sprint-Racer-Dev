#your bed is missing or obstructed
#makes me die inside

execute as @e[tag=activator,type=marker,limit=30,sort=random,scores={nodeState=1..}] run tag @s add spawn_maybe
execute as @e[tag=activator,type=marker,tag=spawn_maybe,scores={nodeState=1..}] at @s unless block ~ ~ ~ air run tag @s remove spawn_maybe
execute as @e[tag=activator,type=marker,tag=spawn_maybe,scores={nodeState=1..}] at @s unless block ~ ~1 ~ air run tag @s remove spawn_maybe
execute as @e[tag=activator,type=marker,tag=spawn_maybe,scores={nodeState=1..}] at @s unless block ~ ~2 ~ air run tag @s remove spawn_maybe

execute as @e[tag=activator,type=marker,limit=1,tag=spawn_maybe,sort=random,scores={nodeState=1..}] at @s run spawnpoint @a ~ ~1 ~

tag @e[tag=spawn_maybe] remove spawn_maybe