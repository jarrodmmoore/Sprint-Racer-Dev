#forceload this chunk so it can hold spectators in place
execute store result score #chunktest value run forceload query ~ ~
execute if score #chunktest value matches 0 run forceload add ~ ~

#activate nodes
scoreboard players set @e[tag=node,type=marker,distance=..100] nodeState 1