#particle
execute if entity @s[tag=!homing] positioned ^ ^ ^-1 unless block ~ ~ ~ water run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[tag=!homing] positioned ^ ^ ^-1 if block ~ ~ ~ water run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[tag=homing] positioned ^ ^ ^-1 run particle dust{color:[0.8,0.0,1.0],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.02 1 force

#count how long we've been alive
scoreboard players add @s age 1

#keep child item display alive
execute on passengers run scoreboard players set @s lifespan 3

#homing missile faces target if it finds one
execute if entity @s[tag=homing,scores={age=4..}] run function sprint_racer:items/item_tick/missile_homing

#fireballs make nearby players catch on fire
execute if entity @s[tag=fireball] at @s unless block ~ ~1 ~ water run function sprint_racer:items/item_tick/fireball

#run physics
execute at @s run function sprint_racer:items/item_tick/missile_physics
execute if entity @s[tag=missile] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light[waterlogged=true] run function sprint_racer:items/item_tick/missile_physics
execute if entity @s[tag=missile,tag=fireball] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light[waterlogged=true] run function sprint_racer:items/item_tick/missile_physics

#check for collision with stuff
#don't explode on our owner if we haven't bounced yet
execute if entity @s[tag=missile] unless score @s bounceCount matches 1.. at @s run function sprint_racer:items/item_tick/missile_entity_check_ignore_owner
#after first bounce: don't care. hit anything that is hittable
execute if entity @s[tag=missile] if score @s bounceCount matches 1.. at @s run function sprint_racer:items/item_tick/missile_entity_check