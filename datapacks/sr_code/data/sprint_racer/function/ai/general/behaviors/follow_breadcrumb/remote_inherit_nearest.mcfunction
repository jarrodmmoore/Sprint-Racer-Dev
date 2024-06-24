function sprint_racer:ai/general/clear_old_ai_targets

tag @e[tag=gotcha] remove gotcha
tag @e[tag=AIBC,limit=1,sort=nearest,tag=!AIBC_deadend,tag=!elytraPath,distance=..80] add gotcha
execute if entity @e[tag=gotcha] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/inherit_target_data

scoreboard players set @s aiSubBehavior 0
scoreboard players set @s aiBehavior 1

#nothing nearby? just starting running around randomly
execute unless entity @e[tag=gotcha] run scoreboard players set @s aiBehavior 2

tag @s remove remote_inherit_nearest