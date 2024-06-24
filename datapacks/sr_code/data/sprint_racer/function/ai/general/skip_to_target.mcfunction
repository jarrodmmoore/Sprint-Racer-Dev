#this is being used now since there are 625 ids instead of 25
scoreboard players operation global math = @s AIBC_id
execute at @s as @e[type=marker,tag=AIBC,distance=..100] if score @s AIBC_id = global math run tag @s add go_here

tp @s @e[limit=1,sort=nearest,distance=..100,tag=AIBC,tag=go_here]
tag @e[tag=go_here,type=marker,distance=..101] remove go_here

execute unless entity @s[scores={AIBC_id=1..625}] run tp @s @e[limit=1,sort=nearest,tag=AIBC]

scoreboard players set @s aiStuckTime 0
scoreboard players set @s aiStuckTime2 0

playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 3 .8
particle flash ~ ~1 ~ 0 0 0 1 3

tag @s add aiDontFace