tag @s add compareTarget

scoreboard players set @s splitTimeMin 0
scoreboard players set @s splitTimeSec 0
scoreboard players set @s splitTimeMsec 0
scoreboard players operation @s splitTimeMsec = @s currentTime
tag @s remove getSplit

execute if entity @s[scores={check=1}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit1
execute if entity @s[scores={check=2}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit2
execute if entity @s[scores={check=3}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit3
execute if entity @s[scores={check=4}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit4
execute if entity @s[scores={check=5}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit5
execute if entity @s[scores={check=6}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit6
execute if entity @s[scores={check=7}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit7
execute if entity @s[scores={check=8}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit8
execute if entity @s[scores={check=9}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit9
execute if entity @s[scores={check=10}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit10
execute if entity @s[scores={check=11}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit11
execute if entity @s[scores={check=12}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit12
execute if entity @s[scores={check=13}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit13
execute if entity @s[scores={check=14}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit14
execute if entity @s[scores={check=15}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit15
execute if entity @s[scores={check=16}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit16
execute if entity @s[scores={check=17}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit17
execute if entity @s[scores={check=18}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit18
execute if entity @s[scores={check=19}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit19
execute if entity @s[scores={check=20}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit20
execute if entity @s[scores={check=21}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit21
execute if entity @s[scores={check=22}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit22
execute if entity @s[scores={check=23}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit23
execute if entity @s[scores={check=24}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit24
execute if entity @s[scores={check=25}] run scoreboard players operation @s splitTimeMsec -= @e[limit=1,tag=compareTarget] bestSplit25

execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=6000..}] run function sprint_racer_language:gameplay/checkpoint_splits/10_min_behind
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=1..5999}] run function sprint_racer_language:gameplay/checkpoint_splits/split_behind
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=0}] run function sprint_racer_language:gameplay/checkpoint_splits/split_equal
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=-5999..-1}] run function sprint_racer_language:gameplay/checkpoint_splits/split_ahead
execute if entity @s[tag=!getSplit,tag=!ignoreSplit,scores={splitTimeMsec=..-6000}] run function sprint_racer_language:gameplay/checkpoint_splits/10_min_ahead

tag @s remove getSplit

tag @e[tag=compareTarget] remove compareTarget