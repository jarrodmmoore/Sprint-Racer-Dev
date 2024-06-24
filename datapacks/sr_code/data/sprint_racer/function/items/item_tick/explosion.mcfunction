execute as @e[tag=explosion,tag=boom] at @s run effect give @e[tag=activeplayer,distance=..5,scores={nResist=..0,resistTime=..0}] resistance 1 3 true
execute as @e[tag=explosion,tag=boom] at @s run effect give @e[tag=activeplayer,distance=..5,scores={resistTime=1..}] resistance 1 4 true

execute as @e[tag=explosion,tag=boom] at @s run summon creeper ~ ~ ~ {Invulnerable:1,NoGravity:1b,Silent:1b,Health:1.0f,Fuse:0,attributes:[{id:"generic.knockback_resistance",base:1}]}
execute if entity @e[tag=cheats,tag=31a] as @e[tag=explosion,tag=boom] at @s run function sprint_racer:items/item_tick/explosion_super
execute as @e[tag=explosion,tag=boom] at @s run tag @e[distance=..4,tag=slimetrap] add dissolve
execute as @e[tag=explosion,tag=boom] at @s run tag @e[distance=..4,tag=magmatrap] add dissolve
kill @e[tag=explosion,tag=boom]

#execute as @e[tag=explosion,tag=killcloud] at @s run kill @e[tag=!refreshcloud,tag=!nasty,tag=!bignasty,type=area_effect_cloud,distance=..3]