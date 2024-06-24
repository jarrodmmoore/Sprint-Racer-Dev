tag @s[tag=goNear] add flip
tag @s[tag=!goNear] add flop

tag @s[tag=flip] remove goNear
tag @s[tag=flop] add goNear

tag @s remove flip
tag @s remove flop

execute if entity @s[tag=goNear] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead
execute unless entity @s[tag=goNear] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/pick_random_target