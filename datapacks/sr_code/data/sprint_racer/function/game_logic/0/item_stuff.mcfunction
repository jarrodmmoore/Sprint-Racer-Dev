#this stuff is only run once per second for performance
scoreboard players set @e[tag=node,tag=itemchest,x=1610,y=87,z=406,distance=..125] nodeState 1
function sprint_racer:items/container_check
scoreboard players set @a itemLuck 3
execute as @a run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1