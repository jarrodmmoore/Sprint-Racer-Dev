#this is executed by a container with tag chest3

playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1
particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0 3
particle block{block_state:"minecraft:glass"} ~ ~1.5 ~ .2 .2 .2 1 20
execute positioned ~ ~1 ~ run kill @e[tag=capsuleItem,distance=..2]
execute positioned ~ ~1 ~ run scoreboard players set @e[distance=..1,tag=node,tag=itemchest,scores={itemBlockState=0}] itemBlockState 50
kill @s