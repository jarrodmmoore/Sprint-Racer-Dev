function sprint_racer:levels/outer_spaceway/map

#cannon blast
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] as @e[tag=activeplayer,scores={scriptMove=3}] at @s if block ~ 97 ~ structure_void positioned 1198 95 2835 run function sprint_racer:levels/outer_spaceway/cannon_blast
execute if score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=3..4}] at @s if block ~ 97 ~ structure_void positioned 1198 95 2835 run function sprint_racer:levels/outer_spaceway/cannon_blast

#navigation patch on checkpoint 6
scoreboard players set @a[x=1203,y=76,z=2849,dx=22,dy=60,dz=12,gamemode=adventure,scores={check=6}] recDirection 3



#create effect clouds that will produce particles for the wind tunnel
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={oTimerGlobal=1}] if loaded 1229 90 2892 run summon area_effect_cloud 1229 90 2892 {custom_particle:{type:"block",block_state:{Name:"air"}},Duration:50,WaitTime:0,Tags:["risingTrail","randomSpread"]}
spreadplayers 1229 2892 3 3 false @e[tag=risingTrail,tag=randomSpread,type=area_effect_cloud]
scoreboard players operation @e[tag=randomSpread,type=area_effect_cloud] lifespan = @e[tag=random,x=1548,y=155,z=406,distance=..1,limit=1,sort=random,scores={rNumber=20..50}] rNumber
tag @e[tag=randomSpread,type=area_effect_cloud] remove randomSpread

#wind tunnel sound
playsound minecraft:entity.generic.extinguish_fire master @a[x=1224,y=102,z=2887,dx=10,dy=50,dz=10] 1229 90 2892 .2 .5 .01
playsound minecraft:entity.generic.extinguish_fire master @a[tag=playing,scores={check=5}] 1229 90 2892 .2 .5

#get levitation in the wind tunnel thing
effect give @e[tag=activeplayer,x=1224,y=90,z=2887,dx=10,dy=7,dz=10] levitation 1 10 true
effect give @e[tag=activeplayer,x=1224,y=90,z=2887,dx=10,dy=20,dz=10] slow_falling 1 0 true

effect clear @e[tag=activeplayer,x=1224,y=102,z=2887,dx=10,dy=5,dz=10,scores={elytraTimer=..0}] levitation
effect give @e[tag=kartpig,x=1224,y=90,z=2887,dx=10,dy=9,dz=10] levitation 1 5 true

execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.75 ~
execute if score #halftick value matches 1 as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.5 ~


#van falls into the abyss
execute as @a[gamemode=adventure,scores={elytraTimer=..0,coord_y=..500000}] run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={hitboxHP=1000..}] at @s if block ~ ~-1 ~ black_concrete run data merge entity @s {Health:"900b"}
