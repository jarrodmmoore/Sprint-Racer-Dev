tag @s remove hasFlag
tag @s[nbt={Inventory:[{components:{"minecraft:custom_data":{teamFlagCyan:1b}}}]}] add hasFlag
execute if entity @s[tag=!hasFlag] run function sprint_racer_language:_dlc_2/gameplay/give_team_flag_cyan
tag @s remove hasFlag