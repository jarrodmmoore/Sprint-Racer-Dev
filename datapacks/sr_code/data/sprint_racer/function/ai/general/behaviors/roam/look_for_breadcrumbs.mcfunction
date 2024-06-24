tag @s[tag=goNear] add flip
tag @s[tag=!goNear] add flop

tag @s[tag=flip] remove goNear
tag @s[tag=flop] add goNear

tag @s remove flip
tag @s remove flop

#pick nearest breadcrumb
execute if entity @s[tag=goNear] run tag @e[tag=AIBC,type=marker,limit=1,sort=nearest,tag=!AIBC_deadend,tag=!elytraPath,distance=..40] add checkCrumbLOS

#pick one of the 6 nearest breadcrumbs at random
execute if entity @s[tag=!goNear] run tag @e[tag=AIBC,type=marker,limit=6,sort=nearest,tag=!AIBC_deadend,tag=!elytraPath,distance=..40] add mightPickMe
execute if entity @s[tag=!goNear] run tag @e[tag=AIBC,type=marker,limit=1,sort=random,tag=!AIBC_deadend,tag=mightPickMe] add checkCrumbLOS
execute if entity @s[tag=!goNear] run tag @e[tag=mightPickMe] remove mightPickMe

#check line of sight to the breadcrumb we picked
scoreboard players set #recursions value 55
scoreboard players set #found_los value 0
execute if entity @e[tag=checkCrumbLOS] at @s positioned ~ ~1.3 ~ facing entity @e[limit=1,tag=checkCrumbLOS,type=marker] feet run function sprint_racer:ai/general/behaviors/roam/check_los_recursive

#found line of sight? go get it
execute if score #found_los value matches 1 at @e[limit=1,tag=checkCrumbLOS,type=marker] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead

tag @e[tag=checkCrumbLOS] remove checkCrumbLOS

scoreboard players set @s roamLookTime 4