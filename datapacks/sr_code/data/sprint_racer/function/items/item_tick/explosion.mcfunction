effect give @e[tag=activeplayer,distance=..5,scores={nResist=..0,resistTime=..0}] resistance 1 3 true
effect give @e[tag=activeplayer,distance=..5,scores={resistTime=1..}] resistance 1 4 true

summon creeper ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Health:1.0f,Fuse:0,attributes:[{id:"knockback_resistance",base:1}]}
#summon creeper ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Health:1.0f,Fuse:0,attributes:[{id:"knockback_resistance",base:1}]}
function sprint_racer:explode_sound_effect {volume:"2.5",pitch:"0.8"}
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=31a] run function sprint_racer:items/item_tick/explosion_super
tag @e[distance=..4,tag=slimetrap] add dissolve
tag @e[distance=..4,tag=magmatrap] add dissolve
kill @s

#execute as @e[tag=explosion,tag=killcloud] at @s run kill @e[tag=!refreshcloud,tag=!nasty,tag=!bignasty,type=area_effect_cloud,distance=..3]