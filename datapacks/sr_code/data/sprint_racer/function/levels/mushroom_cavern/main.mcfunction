function sprint_racer:levels/mushroom_cavern/map

scoreboard players set @a mapZone 1
scoreboard players set @a[gamemode=!spectator,x=117,y=55,z=900,dx=90,dy=100,dz=90] mapZone 0
scoreboard players set @a[gamemode=!spectator,x=117,y=50,z=934,dx=10,dy=12,dz=10] mapZone 1

#create effect clouds that will produce particles for the wind tunnel
execute if entity @e[tag=w,type=armor_stand,scores={oTimerGlobal=1}] if loaded 142 39 961 run summon area_effect_cloud 142 39 961 {Duration:50,Tags:["risingTrail","randomSpread"]}
spreadplayers 142 961 3 3 false @e[tag=risingTrail,tag=randomSpread,type=area_effect_cloud]
scoreboard players operation @e[tag=randomSpread,type=area_effect_cloud] lifespan = @e[tag=random,limit=1,sort=random,scores={rNumber=20..50}] rNumber
tag @e[tag=randomSpread,type=area_effect_cloud] remove randomSpread

#wind tunnel sound
playsound minecraft:entity.generic.extinguish_fire master @a[x=138,y=40,z=957,dx=8,dy=50,dz=8] 142 41 961 .2 .5 .01
playsound minecraft:entity.generic.extinguish_fire master @a[tag=playing,scores={check=5}] 142 41 961 .2 .5

#get levitation in the wind tunnel thing
effect give @e[tag=activeplayer,x=138,y=40,z=957,dx=8,dy=5,dz=8] levitation 1 17 true
effect give @e[tag=activeplayer,x=138,y=40,z=957,dx=8,dy=10,dz=8] levitation 1 12 true
effect give @e[tag=activeplayer,x=138,y=40,z=957,dx=8,dy=15,dz=8] levitation 1 9 true
effect give @e[tag=activeplayer,x=139,y=40,z=958,dx=6,dy=20,dz=6] levitation 1 5 true
effect clear @e[tag=activeplayer,x=137,y=61,z=956,dx=10,dy=20,dz=10,scores={elytraTimer=..0}] levitation
effect give @e[tag=kartpig,x=138,y=40,z=957,dx=8,dy=15,dz=8] levitation 1 5 true

execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.75 ~
execute if score #halftick value matches 1 as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.5 ~