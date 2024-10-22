#particle explosion ~ ~ ~ 1 1 1 1 5
#particle explosion ~ ~ ~ 1 1 1 1 5 force
#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1

tag @e[tag=hitMe] remove hitMe

execute at @s run tag @e[distance=..3,tag=slimetrap] add dissolve
execute at @s run tag @e[distance=..3,tag=magmatrap] add dissolve

#only hit players that are NOT the user
tag @e[tag=activeplayer,distance=..4] add checkmyid
scoreboard players operation @e[tag=checkmyid] dummyID = @s playerID
execute as @e[tag=checkmyid] run scoreboard players operation @s dummyID -= @s playerID
tag @e[tag=checkmyid,scores={playerID=1..,dummyID=1..}] add hitMe
tag @e[tag=checkmyid,scores={playerID=1..,dummyID=..-1}] add hitMe
tag @e[tag=checkmyid] remove checkmyid

#blow up item capsules to prevent a bug
execute as @e[tag=itemcontainer,tag=chest3,distance=..7] at @s run function sprint_racer:items/container_types/capsule_broken_by_explosion

#blow up targets
tag @e[distance=..4,tag=taTargetCore] add targetHit

#damage chicken mines as well because that's funny
effect give @e[tag=chickenmine,distance=..2] instant_damage 1 1 true
effect give @e[tag=chickenmine,distance=..4] instant_damage 1 0 true

tag @s add self
effect give @e[tag=hitMe,distance=..2,scores={resistTime=1..}] resistance 1 2 true
effect give @e[tag=hitMe,distance=..2] resistance 1 0 true
effect give @e[tag=hitMe,tag=!undead,distance=..2] instant_damage 1 1 true
effect give @e[tag=hitMe,tag=!undead,distance=..4] instant_damage 1 0 true
effect give @e[tag=hitMe,tag=undead,distance=..2] instant_health 1 1 true
effect give @e[tag=hitMe,tag=undead,distance=..4] instant_health 1 0 true
execute as @e[tag=hitMe,type=wither] run function sprint_racer:ai/general/wither_take_damage
scoreboard players operation @e[tag=hitMe,distance=..4,tag=!self] attackerID = @s playerID
scoreboard players set @e[tag=hitMe,distance=..4] attackTime 100
tag @s remove self

tag @e[tag=hitMe] remove hitMe