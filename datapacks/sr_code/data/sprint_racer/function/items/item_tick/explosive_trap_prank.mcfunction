tag @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=itemcontainer,scores={itemBlockState=12}] add kaboom
#no attacker ID because this trapped chest was spawned by RNJesus
tag @a remove kaboom

#unlike normal trapped chests, this one makes the item chest node it came from regenerate
execute as @e[tag=kaboom,limit=1,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000

execute as @e[tag=kaboom,limit=1,sort=nearest] at @s positioned ~ ~1.1 ~ run kill @e[type=item,distance=..2,tag=itemcontainer]
execute as @e[tag=kaboom,limit=1,sort=nearest] at @s positioned ~ ~1.1 ~ run kill @e[distance=..2,tag=itemcontainer,tag=!kaboom,scores={itemBlockState=10}]
execute as @e[tag=kaboom,limit=1,sort=nearest] at @s positioned ~ ~1.1 ~ run function sprint_racer:explode
kill @e[tag=kaboom]

scoreboard players set @s itemBlockState 0