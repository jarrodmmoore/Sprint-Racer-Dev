execute unless entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hp

execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hitboxHP
execute if entity @s[tag=ai] run scoreboard players set @s math 1000
execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP -= @s math

execute unless entity @s[scores={racePosDisplay=1..}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/no_pos
execute if entity @s[scores={racePosDisplay=1}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/1
execute if entity @s[scores={racePosDisplay=2}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/2
execute if entity @s[scores={racePosDisplay=3}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/3
execute if entity @s[scores={racePosDisplay=4..20}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/4_20
execute if entity @s[scores={racePosDisplay=21}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/21
execute if entity @s[scores={racePosDisplay=22}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/22
execute if entity @s[scores={racePosDisplay=23}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/23
execute if entity @s[scores={racePosDisplay=24..30}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/24_30
execute if entity @s[scores={racePosDisplay=31}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/31
execute if entity @s[scores={racePosDisplay=32}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/32
execute if entity @s[scores={racePosDisplay=33}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/33
execute if entity @s[scores={racePosDisplay=34..}] run function sprint_racer_language:gameplay/spectator_target_inspect_race/34_plus