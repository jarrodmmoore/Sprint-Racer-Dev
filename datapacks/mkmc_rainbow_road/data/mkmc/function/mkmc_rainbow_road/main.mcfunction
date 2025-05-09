#this function is run 20 times per second (every game tick) while your track is being played.


#create effect clouds that will produce particles for the wind tunnel
execute positioned 9795 147 -7749 if loaded ~ ~ ~ if entity @a[distance=..80] run summon area_effect_cloud 9795 147 -7749 {Particle:{type:"block",block_state:{Name:"air"}},Duration:70,WaitTime:0,Tags:["risingTrail","randomSpread"]}
spreadplayers 9795 -7749 8 8 under 180 false @e[tag=risingTrail,tag=randomSpread,type=area_effect_cloud]
execute as @e[tag=randomSpread,type=area_effect_cloud] store result score @s lifespan run random value 15..65
tag @e[tag=randomSpread,type=area_effect_cloud] remove randomSpread

#wind tunnel sound
playsound minecraft:entity.generic.extinguish_fire master @a[x=9783,y=140,z=-7761,dx=24,dy=50,dz=24] 9795 148 -7749 .2 .5 .01
playsound minecraft:entity.generic.extinguish_fire master @a[tag=playing] 9795 148 -7749 .2 .5

#get levitation in the wind tunnel thing
execute as @e[tag=activeplayer,x=9783,y=140,z=-7761,dx=24,dy=35,dz=24] at @s if block ~ 146 ~ dispenser run effect give @s levitation 1 17 true
execute as @e[tag=activeplayer,x=9783,y=185,z=-7761,dx=24,dy=35,dz=24,scores={elytraTimer=..0}] run effect clear @s levitation
execute as @e[tag=kartpig,x=9783,y=140,z=-7761,dx=24,dy=35,dz=24] at @s if block ~ 146 ~ dispenser run effect give @s levitation 1 17 true

#trails do their thing
execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.75 ~
execute if score #halftick value matches 1 as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.5 ~


#need to help AIs get past that elytra launcher thing
#...because they're not smart enough to do it on their own
execute as @e[type=armor_stand,tag=elytraGuide,x=9825,y=188,z=-7673,distance=..16] at @s if block ~ ~2 ~ lime_stained_glass run tp @s ~-.5 ~ ~
