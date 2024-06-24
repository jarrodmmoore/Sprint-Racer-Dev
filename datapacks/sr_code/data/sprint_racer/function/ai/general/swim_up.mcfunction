scoreboard players set @s math 10
execute store result entity @s Motion[1] double 0.045 run scoreboard players get @s math

scoreboard players add @s aiStuckTime 2

scoreboard players add @s aiStuckSwim 1
execute if entity @s[scores={aiStuckSwim=20..}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/battle_get_unstuck