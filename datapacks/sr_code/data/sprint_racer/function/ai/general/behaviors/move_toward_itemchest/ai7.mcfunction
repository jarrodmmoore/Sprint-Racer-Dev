#look for a target if we don't already have one
execute if entity @s[scores={itemCooldown=..0}] unless entity @e[tag=aiTarget7,tag=secondaryTarget] if entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest10,tag=!aiCantSee] run tag @e[tag=itemcontainer,type=armor_stand,limit=1,distance=..6,sort=random,tag=!chest10,tag=!aiCantSee] add newTarget
execute if entity @s[scores={itemCooldown=..0,aiHasNormal=..0}] run tag @e[tag=newTarget,tag=chest2] remove newTarget
execute if entity @e[tag=newTarget,type=armor_stand] run function sprint_racer:ai/general/behaviors/move_toward_itemchest/check_if_trapped
tag @e[tag=newTarget] add aiTarget7
tag @e[tag=newTarget] add secondaryTarget
tag @e[tag=newTarget] remove newTarget

#no chests around? stop
execute if entity @s[scores={itemCooldown=..0}] unless entity @e[tag=aiTarget7,tag=secondaryTarget] unless entity @e[tag=itemcontainer,type=armor_stand,distance=..6] run tag @s add time2stop
execute if entity @s[scores={itemCooldown=..0,aiHasNormal=..0}] unless entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest2] run tag @s add time2stop

#stuck? stop
execute if entity @s[scores={aiStuckTime=11..}] run tag @s add time2stop
execute if entity @s[scores={aiStuckTime2=30..}] run tag @s add time2stop


#if we run across our primary target, then we've successfully hit it
execute if score @s aiBehavior matches 1 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/parallel_check_for_target_7

tag @s[scores={itemCooldown=1..}] add time2stop

execute if entity @s[tag=time2stop] run tag @e[tag=aiTarget7,tag=secondaryTarget] remove aiTarget7
scoreboard players set @s[tag=time2stop] aiSubBehavior 0
scoreboard players set @s[tag=time2stop] aiSubBTimer 0

execute if entity @s[tag=time2stop] run function sprint_racer:ai/general/behaviors/move_toward_itemchest/get_seek_cooldown

tag @s[tag=time2stop] remove time2stop