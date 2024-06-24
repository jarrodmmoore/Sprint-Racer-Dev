execute unless entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hp

execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hitboxHP
execute if entity @s[tag=ai] run scoreboard players set @s math 1000
execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP -= @s math

execute unless entity @s[scores={battPosDisplay=1..}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/no_pos
execute if entity @s[scores={battPosDisplay=1}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/1
execute if entity @s[scores={battPosDisplay=2}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/2
execute if entity @s[scores={battPosDisplay=3}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/3
execute if entity @s[scores={battPosDisplay=4..20}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/4_20
execute if entity @s[scores={battPosDisplay=21}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/21
execute if entity @s[scores={battPosDisplay=22}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/22
execute if entity @s[scores={battPosDisplay=23}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/23
execute if entity @s[scores={battPosDisplay=24..30}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/24_30
execute if entity @s[scores={battPosDisplay=31}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/31
execute if entity @s[scores={battPosDisplay=32}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/32
execute if entity @s[scores={battPosDisplay=33}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/33
execute if entity @s[scores={battPosDisplay=34..}] run function sprint_racer_language:gameplay/spectator_target_inspect_battle/34_plus