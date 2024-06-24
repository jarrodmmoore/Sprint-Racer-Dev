scoreboard players add @s age 1
execute if score #halftick value matches 1 run scoreboard players add @s age 1

#################
#replace the cminseset chicken with the armed chicken mine at age=60
execute if entity @s[tag=cmineset,scores={age=60}] at @s run function sprint_racer:items/item_tick/chicken_mine_summon_armed
#################

#particles
execute if entity @s[tag=cmineactive] run particle smoke ~ ~1.4 ~ 0 0 0 0.03 1
execute if entity @s[tag=hyper] run particle flame ~ ~.5 ~ .2 .2 .2 0.01 3

#fly if players are above
execute if entity @s[tag=cmineactive] positioned ~-1.5 ~3 ~-1.5 if entity @e[tag=activeplayer,dx=3,dy=17,dz=3] run effect give @s levitation 1 7 true

#hyper chickens poop traps
execute if entity @s[tag=hyper,scores={age=100}] run function sprint_racer:items/item_tick/deploy_on_ground/slime_trap
execute if entity @s[tag=hyper,scores={age=200}] run function sprint_racer:items/item_tick/deploy_on_ground/slime_trap
execute if entity @s[tag=hyper,scores={age=300}] run function sprint_racer:items/item_tick/deploy_on_ground/magma_trap
execute if entity @s[tag=hyper,scores={age=400}] run function sprint_racer:items/item_tick/deploy_on_ground/nasty_potion
execute if entity @s[tag=hyper,scores={age=500}] run function sprint_racer:items/item_tick/deploy_on_ground/tnt
execute if entity @s[tag=hyper,scores={age=600}] run function sprint_racer:items/item_tick/deploy_on_ground/tnt_shotgun

#explode on contact with player
execute if entity @s[tag=cmineactive] if entity @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] run tag @s add cmineblowup

#explode on contact with water
execute if entity @s[tag=cmineactive] if block ~ ~ ~ water run tag @s add cmineblowup

#explode if we lose our zombie rider
execute if entity @s[tag=cmineactive] unless entity @e[distance=..2,type=zombified_piglin,tag=cminezombie] run tag @s add cmineblowup

#explode after being alive for too long
tag @s[tag=cmineactive,scores={age=600..}] add cmineblowup

#chill mode, don't explode until later (didn't use?)
#execute if entity @s[tag=cminechill,tag=cmineblowup] unless entity @s[scores={aiLifeTime=200..}] run tag @s remove cmineblowup

#can only explode once
execute if entity @s[tag=cmineblowup,tag=!cmineblownup] run function sprint_racer:items/item_tick/chicken_mine_blow_up

#die?
execute unless score @s lifespan matches ..1 run scoreboard players set @s[tag=cmineblownup] lifespan 1
execute unless score @s lifespan matches ..1 run scoreboard players set @s[scores={age=660..}] lifespan 1