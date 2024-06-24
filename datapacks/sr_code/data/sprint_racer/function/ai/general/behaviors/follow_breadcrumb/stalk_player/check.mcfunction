tag @e[limit=1,sort=nearest,tag=activeplayer,distance=1..] add stalk_target

scoreboard objectives add dir_checker dummy

execute if entity @s[scores={AIBC_dir1=1..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/tag_dir1
execute if entity @s[scores={AIBC_dir2=1..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/tag_dir2
execute if entity @s[scores={AIBC_dir3=1..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/tag_dir3
execute if entity @s[scores={AIBC_dir4=1..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/tag_dir4

#go in direction that puts us closest to the target
execute at @e[limit=1,sort=nearest,tag=stalk_target] run scoreboard players operation @s aiDirection = @e[limit=1,sort=nearest,type=marker,tag=AIBC,scores={dir_checker=1..4}] dir_checker

#clear stuff..
tag @e[limit=1,sort=nearest,tag=stalk_target] remove stalk_target
scoreboard objectives remove dir_checker