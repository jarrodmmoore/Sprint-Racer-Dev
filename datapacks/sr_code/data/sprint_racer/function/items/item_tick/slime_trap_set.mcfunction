tp @s ~ ~-.49 ~
execute at @s run playsound minecraft:entity.slime.hurt master @a
execute at @s run particle falling_dust{block_state:"minecraft:slime_block"} ~ ~.5 ~ 0.25 0.25 0.25 .1 30
data merge entity @s {NoGravity:1b}
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] run function sprint_racer:cheats/homing_entity_chance
tag @s add sDeployed