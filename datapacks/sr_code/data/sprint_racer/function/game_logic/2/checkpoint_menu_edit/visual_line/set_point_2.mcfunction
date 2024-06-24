tag @s add self_f

execute as @e[tag=v_point1] if score @s checkpointID matches 1.. if score @s checkpointID = #temp value run tag @s add setme_v1

execute as @e[tag=setme_v1] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,tag=self_f] feet
execute as @e[tag=setme_v1] at @s store result score #temp visualYaw run data get entity @s Rotation[0] 1
execute as @e[tag=setme_v1] at @s store result score #temp visualPitch run data get entity @s Rotation[1] 1

scoreboard players set #temp visualLength 0
execute at @e[tag=setme_v1,limit=1] run function sprint_racer:game_logic/2/checkpoint_menu_edit/visual_line/find_length_recursion

execute as @e[tag=checkpoint,tag=node] if score @s checkpointID matches 1.. if score @s checkpointID = #temp value run function sprint_racer:game_logic/2/checkpoint_menu_edit/visual_line/set_length_and_rotation

tag @e[tag=setme_v1] remove setme_v1
kill @e[tag=setme_v1]
tag @e[tag=self_f] remove self_f

scoreboard players add @s visualLength 1

tag @s remove swappedHands