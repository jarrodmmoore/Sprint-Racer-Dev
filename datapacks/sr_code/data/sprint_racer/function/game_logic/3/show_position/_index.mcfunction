execute if entity @s[tag=firstplace] unless entity @s[scores={battPosDisplay=1}] run tag @s remove firstplace
#execute if entity @s[tag=firstplace2] unless entity @s[tag=firstplace] run function sprint_racer_language:gameplay/rank_display/lost_lead
execute if entity @s[tag=firstplace2] unless entity @s[tag=firstplace] run tag @s remove firstplace2

execute if entity @s[scores={battPosDisplay=1}] run function sprint_racer_language:gameplay/rank_display/1
execute if entity @s[scores={battPosDisplay=2}] run function sprint_racer_language:gameplay/rank_display/2
execute if entity @s[scores={battPosDisplay=3}] run function sprint_racer_language:gameplay/rank_display/3
execute if entity @s[scores={battPosDisplay=4..20}] run function sprint_racer_language:gameplay/rank_display/4_20
execute if entity @s[scores={battPosDisplay=21..}] run function sprint_racer:game_logic/3/show_position/_index_21_plus