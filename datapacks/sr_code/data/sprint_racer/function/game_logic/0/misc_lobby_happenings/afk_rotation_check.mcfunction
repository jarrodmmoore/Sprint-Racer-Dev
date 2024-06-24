scoreboard players operation @s rot_yaw_echo -= @s rot_yaw
execute unless entity @s[scores={rot_yaw_echo=0}] run scoreboard players add @s rot_yaw_change 5
scoreboard players set @s[scores={rot_yaw_change=30..}] rot_yaw_change 30
scoreboard players remove @s[scores={rot_yaw_echo=0,rot_yaw_change=-9..}] rot_yaw_change 1
scoreboard players operation @s rot_yaw_echo = @s rot_yaw

#not AFK if we're actively looking around
scoreboard players set @s[scores={rot_yaw_change=0..}] afkTime 0
execute if entity @s[tag=afk,scores={rot_yaw_change=0..}] run function sprint_racer_language:afk_tag_remove