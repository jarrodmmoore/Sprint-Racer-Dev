summon area_effect_cloud ~-5 ~ ~-5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:10,Tags:["edge1","vis_edge"]}
summon area_effect_cloud ~-5 ~ ~-5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:10,Tags:["edge2","vis_edge"]}
summon area_effect_cloud ~5 ~ ~5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:10,Tags:["edge4","vis_edge"]}
summon area_effect_cloud ~5 ~ ~5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:10,Tags:["edge5","vis_edge"]}

#summon vertical edges with lifespan based on height (up to some maximum))
execute if score #box_height value matches 1..100 run summon area_effect_cloud ~-5 ~ ~-5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:2,Tags:["edge3","vis_edge","tempGetHeight"]}
#execute if score #box_height value matches 1..100 run summon area_effect_cloud ~-5 ~ ~5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:2,Tags:["edge3","vis_edge","tempGetHeight"]}
#execute if score #box_height value matches 1..100 run summon area_effect_cloud ~5 ~ ~5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:2,Tags:["edge3","vis_edge","tempGetHeight"]}
#execute if score #box_height value matches 1..100 run summon area_effect_cloud ~5 ~ ~-5 {NoGravity:1b,Particle:{type:"block",block_state:{Name:"air"}},Duration:2,Tags:["edge3","vis_edge","tempGetHeight"]}

execute as @e[tag=tempGetHeight,type=area_effect_cloud] store result entity @s Duration int 1 run scoreboard players get #box_height value
tag @e[tag=tempGetHeight] remove tempGetHeight