summon area_effect_cloud ^ ^ ^ {Tags:["n_e_look"],custom_particle:{type:"block",block_state:{Name:"air"}},Duration:1,WaitTime:0}
tp @e[limit=1,distance=..5,sort=nearest,tag=n_e_look,type=area_effect_cloud] ~ ~ ~ ~ ~

execute as @e[limit=1,distance=..5,sort=nearest,tag=n_e_look,type=area_effect_cloud] store result score #ne_rot_check value run data get entity @s Rotation[0] 1