tag @s add compareTarget

scoreboard players set @s splitTimeMin 0
scoreboard players set @s splitTimeSec 0
scoreboard players set @s splitTimeMsec 0

function sprint_racer:game_logic/1/record_lap/individual_lap_compare/_index

tag @s remove getSplit

execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=6000..}] run function sprint_racer:game_logic/1/record_lap/lap_splits/10_min_behind
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=1..5999}] run function sprint_racer:game_logic/1/record_lap/lap_splits/split_behind
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=0}] run function sprint_racer:game_logic/1/record_lap/lap_splits/split_equal
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=-5999..-1}] run function sprint_racer:game_logic/1/record_lap/lap_splits/split_ahead
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=..-6000}] run function sprint_racer:game_logic/1/record_lap/lap_splits/10_min_ahead

tag @s remove getSplit

tag @e[tag=compareTarget] remove compareTarget