tp @s ~ ~-.49 ~
execute at @s run playsound minecraft:entity.magma_cube.hurt master @a
execute at @s run particle falling_dust{block_state:"minecraft:magma_block"} ~ ~.5 ~ 0.25 0.25 0.25 .1 30
data merge entity @s {NoGravity:1b}
execute if entity @e[tag=cheats,type=armor_stand,tag=11a] run function sprint_racer:cheats/homing_entity_chance
tag @s add sDeployed