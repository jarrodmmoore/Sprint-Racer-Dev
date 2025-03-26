execute if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"air"}},Duration:25,Tags:["updateblock","setme"]}
scoreboard players set @e[tag=setme] lifespan 20
tag @e[tag=setme] remove setme
tp @s ^ ^ ^1