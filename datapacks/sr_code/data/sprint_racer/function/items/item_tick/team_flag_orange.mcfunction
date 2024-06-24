tag @s remove hasFlag
tag @s[nbt={Inventory:[{components:{"minecraft:custom_data":{teamFlagOrange:1b}}}]}] add hasFlag
execute if entity @s[tag=!hasFlag] run function sprint_racer_language:_dlc_2/gameplay/give_team_flag_orange
tag @s remove hasFlag