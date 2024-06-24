scoreboard players set @s AIBC_id 0
scoreboard players set @s AIBC_dir1 0
scoreboard players set @s AIBC_dir2 0
scoreboard players set @s AIBC_dir3 0
scoreboard players set @s AIBC_dir4 0
scoreboard players set @s AIBC_hook 0
scoreboard players set @s AIBC_spread 0
scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_condition 0

scoreboard players set @s recoverAttempts 0
tag @s remove remote_inherit_nearest

execute if entity @s[tag=warpstuck] run scoreboard players remove @s[scores={teleportCount=1..}] teleportCount 1

scoreboard players operation @s AIBC_dir1 = @e[limit=1,tag=gotcha] AIBC_dir1
scoreboard players operation @s AIBC_dir2 = @e[limit=1,tag=gotcha] AIBC_dir2
scoreboard players operation @s AIBC_dir3 = @e[limit=1,tag=gotcha] AIBC_dir3
scoreboard players operation @s AIBC_dir4 = @e[limit=1,tag=gotcha] AIBC_dir4
scoreboard players operation @s AIBC_hook = @e[limit=1,tag=gotcha] AIBC_hook
scoreboard players operation @s AIBC_spread = @e[limit=1,tag=gotcha] AIBC_spread
scoreboard players operation @s AIBC_event = @e[limit=1,tag=gotcha] AIBC_event
scoreboard players operation @s AIBC_condition = @e[limit=1,tag=gotcha] AIBC_condition
tag @s remove megaShortcut
execute if entity @e[limit=1,tag=gotcha,tag=megaShortcut] run tag @s add megaShortcut
tag @s remove elytra_specific
tag @s remove elytra_specific_2

execute if entity @s[scores={elytraTimer=1..}] run tag @s add elytra_new_dir

#if NO directions were specified at all, we go into "explore" mode
scoreboard players set @s[scores={AIBC_dir1=..0,AIBC_dir2=..0,AIBC_dir3=..0,AIBC_dir4=..0}] aiBehavior 2

#now let's choose ourselves a new "direction" (or keep the old one)
execute if entity @s[tag=!gotdir,scores={aiDirection=1}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/get_new_direction_from_1
execute if entity @s[tag=!gotdir,scores={aiDirection=2}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/get_new_direction_from_2
execute if entity @s[tag=!gotdir,scores={aiDirection=3}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/get_new_direction_from_3
execute if entity @s[tag=!gotdir,scores={aiDirection=4}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/get_new_direction_from_4
execute unless entity @s[scores={aiDirection=1..4}] run scoreboard players operation @s aiDirection = @e[limit=1,sort=random,tag=random,scores={rNumber=1..4}] rNumber

#internalize chosen direction so we can chase the right breadcrumb
execute if entity @s[scores={aiDirection=1}] run scoreboard players operation @s AIBC_id = @s AIBC_dir1
execute if entity @s[scores={aiDirection=2}] run scoreboard players operation @s AIBC_id = @s AIBC_dir2
execute if entity @s[scores={aiDirection=3}] run scoreboard players operation @s AIBC_id = @s AIBC_dir3
execute if entity @s[scores={aiDirection=4}] run scoreboard players operation @s AIBC_id = @s AIBC_dir4

#ai rotation offset / "hook"
execute if entity @s[scores={AIBC_hook=..1}] run scoreboard players set @s aiRotSet 0
execute if entity @s[scores={AIBC_hook=2}] run scoreboard players set @s aiRotSet 20
execute if entity @s[scores={AIBC_hook=3}] run scoreboard players set @s aiRotSet -20
execute if entity @s[scores={AIBC_hook=4..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/random_rot_set
execute if entity @s[scores={aiRotOSTime=..1}] run scoreboard players operation @s aiRotOffset = @s aiRotSet


#EVENTS
execute if entity @s[scores={AIBC_event=1..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/events/_events_main


#now summon a new target to run towards
function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/_index_target

tag @s remove gotdir