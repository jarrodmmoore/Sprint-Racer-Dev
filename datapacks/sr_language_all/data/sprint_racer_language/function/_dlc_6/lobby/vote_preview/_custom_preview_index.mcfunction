execute if entity @s[tag=usingMacroPreview] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute if entity @s[tag=usingMacroPreview] run return run function sprint_racer_language:_dlc_6/lobby/vote_preview/_custom_preview_macro with storage sprint_racer:func_args

execute if entity @s[scores={customPreview=11001..11010}] run function sprint_racer_language:_dlc_3/lobby/vote_preview/_custom_preview_index_1_10
execute if entity @s[scores={customPreview=11011..11020}] run function sprint_racer_language:_dlc_3/lobby/vote_preview/_custom_preview_index_11_20
execute if entity @s[scores={customPreview=11021..11030}] run function sprint_racer_language:_dlc_3/lobby/vote_preview/_custom_preview_index_21_30
execute if entity @s[scores={customPreview=11031..11040}] run function sprint_racer_language:_dlc_3/lobby/vote_preview/_custom_preview_index_31_40
execute if entity @s[scores={customPreview=11041..11050}] run function sprint_racer_language:_dlc_3/lobby/vote_preview/_custom_preview_index_41_50