execute as @e[tag=checkpoint,type=marker] if score @s checkpointID matches 1.. if score @s checkpointID = #temp value run tag @s add setme_v

execute store result score @s visualXoffset run data get entity @s Pos[0] 10
execute store result score @s visualYoffset run data get entity @s Pos[1] 10
execute store result score @s visualZoffset run data get entity @s Pos[2] 10

execute as @e[tag=setme_v] at @s store result score @s visualXoffset run data get entity @s Pos[0] 10
execute as @e[tag=setme_v] at @s store result score @s visualYoffset run data get entity @s Pos[1] 10 
execute as @e[tag=setme_v] at @s store result score @s visualZoffset run data get entity @s Pos[2] 10

scoreboard players operation @e[tag=setme_v] visualXoffset -= @s visualXoffset
scoreboard players operation @e[tag=setme_v] visualYoffset -= @s visualYoffset
scoreboard players operation @e[tag=setme_v] visualZoffset -= @s visualZoffset

execute at @s positioned ~ ~ ~ run summon area_effect_cloud ~ ~ ~ {Tags:["getCID","v_point1"],Particle:{type:"block",block_state:{Name:"air"}},Duration:999999,WaitTime:0}
scoreboard players set @e[tag=getCID] lifespan 10
scoreboard players operation @e[tag=getCID] checkpointID = @s checkpointID
tag @e[tag=getCID] remove getCID

tag @e[tag=setme_v] remove setme_v

scoreboard players add @s visualLength 1

tag @s remove swappedHands