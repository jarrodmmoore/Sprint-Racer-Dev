execute unless entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hp

execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP = @s hitboxHP
execute if entity @s[tag=ai] run scoreboard players set @s math 1000
execute if entity @s[tag=ai] run scoreboard players operation @s specShowHP -= @s math

function sprint_racer_language:_dlc_1/gameplay/spectator_target_inspect_lives