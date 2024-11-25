#particle explosion ~ ~ ~ 1 1 1 1 5
#particle explosion ~ ~ ~ 1 1 1 1 5 force

tag @e[tag=hitMe] remove hitMe

execute at @s run tag @e[distance=..3,tag=slimetrap] add dissolve
execute at @s run tag @e[distance=..3,tag=magmatrap] add dissolve

#only hit players that are NOT the user
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=activeplayer,distance=..4] unless score @s playerID = #checkID value run tag @s add hitMe

#what was i thinking with this?
#tag @e[tag=activeplayer,distance=..4] add checkmyid
#scoreboard players operation @e[tag=checkmyid,distance=..4] dummyID = @s playerID
#execute as @e[tag=checkmyid,distance=..4] run scoreboard players operation @s dummyID -= @s playerID
#tag @e[tag=checkmyid,distance=..4,scores={playerID=1..,dummyID=1..}] add hitMe
#tag @e[tag=checkmyid,distance=..4,scores={playerID=1..,dummyID=..-1}] add hitMe
#tag @e[tag=checkmyid,distance=..4] remove checkmyid

#blow up item capsules to prevent a bug
execute as @e[tag=itemcontainer,tag=chest3,distance=..7] at @s run function sprint_racer:items/container_types/capsule_broken_by_explosion

#blow up targets
tag @e[distance=..4,tag=taTargetCore] add targetHit

#damage chicken mines as well because that's funny
effect give @e[tag=chickenmine,distance=..2] instant_damage 1 1 true
effect give @e[tag=chickenmine,distance=..4] instant_damage 1 0 true

tag @s add self

#deal damage
execute as @e[tag=hitMe,distance=..4] run function sprint_racer:explode_fake_damage_calc

#old damage code
#effect give @e[tag=hitMe,distance=..2,scores={resistTime=1..}] resistance 1 2 true
#effect give @e[tag=hitMe,distance=..2] resistance 1 0 true

#effect give @e[tag=hitMe,tag=!undead,distance=..2] instant_damage 1 1 true
#effect give @e[tag=hitMe,tag=!undead,distance=..4] instant_damage 1 0 true
#effect give @e[tag=hitMe,tag=undead,distance=..2] instant_health 1 1 true
#effect give @e[tag=hitMe,tag=undead,distance=..4] instant_health 1 0 true
#execute as @e[tag=hitMe,type=wither] run function sprint_racer:ai/general/wither_take_damage

#we did this
scoreboard players operation @e[tag=hitMe,distance=..4,tag=!self] attackerID = @s playerID
scoreboard players set @e[tag=hitMe,distance=..4] attackTime 100
tag @s remove self

tag @e[tag=hitMe] remove hitMe