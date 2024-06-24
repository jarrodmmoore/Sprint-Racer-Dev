tag @e[tag=aiTarget3,tag=secondaryTarget] remove secondaryTarget

#no target found? let's pick a new one
execute unless entity @e[tag=aiTarget3,limit=1,sort=nearest,type=marker] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead

#reached the target, let's find a new one
tag @e[tag=aiTarget3,tag=!subTarget,distance=..2,tag=!requireGround,type=marker] add gotcha
execute if entity @s[nbt={OnGround:1b}] run tag @e[tag=aiTarget3,tag=!subTarget,distance=..2,tag=requireGround,type=marker] add gotcha
execute if entity @e[tag=gotcha,limit=1,type=marker] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/inherit_target_data
kill @e[tag=gotcha,tag=!node,type=marker]
tag @e[tag=gotcha,type=marker] remove aiTarget3
tag @e[tag=gotcha,type=marker] remove gotcha