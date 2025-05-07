#executed by a custom track armor stand

#v1.6: all custom tracks should have an associated custom tagline
execute unless score @s customTagLine matches -2147483648..2147483647 run function sprint_racer:game_logic/10/assign_custom_tagline_storage

#v1.6.7: need sort data
execute unless entity @s[tag=ctHasSortData] run scoreboard players set @s customTrackSortNumber 0
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute unless entity @s[tag=ctHasSortData] run function sprint_racer:game_logic/10/track_version_upkeep/assign_default_custom_group_macro with storage sprint_racer:func_args
tag @s add ctHasSortData