summon area_effect_cloud ~ ~.25 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},Duration:2,WaitTime:0,WaitTime:0,Tags:["aiRpos","setID"]}
#execute if score #halftick value matches 1 run summon area_effect_cloud ~ ~.25 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},Duration:4,WaitTime:0,Tags:["aiRpos","setID"]}

scoreboard players operation @e[tag=setID,limit=1] playerID = @s playerID
tag @e[tag=setID] remove setID