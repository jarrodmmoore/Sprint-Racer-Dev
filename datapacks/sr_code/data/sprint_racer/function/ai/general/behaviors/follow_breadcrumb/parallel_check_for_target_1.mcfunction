#reached the target, let's find a new one
tag @e[tag=aiTarget1,tag=!secondaryTarget,tag=!subTarget,distance=..2,tag=!requireGround,type=marker] add gotcha
execute if entity @s[nbt={OnGround:1b}] run tag @e[tag=aiTarget1,limit=1,tag=!subTarget,distance=..2,tag=requireGround,type=marker] add gotcha
execute if entity @e[tag=gotcha,limit=1,type=marker] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/inherit_target_data
kill @e[tag=gotcha,tag=!node,type=marker]
tag @e[tag=gotcha,type=marker] remove aiTarget1
tag @e[tag=gotcha,type=marker] remove gotcha