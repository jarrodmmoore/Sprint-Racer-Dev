summon area_effect_cloud ~ ~.25 ~ {Duration:2,Tags:["aiRpos","setID"]}
#execute if score #halftick value matches 1 run summon area_effect_cloud ~ ~.25 ~ {Duration:4,Tags:["aiRpos","setID"]}

scoreboard players operation @e[tag=setID,limit=1] playerID = @s playerID
tag @e[tag=setID] remove setID