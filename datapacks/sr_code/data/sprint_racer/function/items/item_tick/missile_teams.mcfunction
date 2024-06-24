#particle
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 unless block ~ ~ ~ water run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[tag=!homing] positioned ^ ^ ^-.5 if block ~ ~ ~ water run particle bubble ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[tag=homing] positioned ^ ^ ^-.5 run particle dust{color:[0.8,0.0,1.0],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.02 1 force

#keep child item display alive
execute on passengers run scoreboard players set @s lifespan 3

#team trails
execute if entity @s[tag=!itemCyan] at @s run particle falling_dust{block_state:"minecraft:orange_concrete"} ^ ^1.6 ^-3 .2 .2 .2 .01 1 force
execute if entity @s[tag=itemCyan] at @s run particle falling_dust{block_state:"minecraft:cyan_concrete"} ^ ^1.6 ^-3 .2 .2 .2 .01 1 force

#count how long we've been alive
scoreboard players add @s age 1

#homing missile faces target if it finds one
execute if entity @s[tag=homing,scores={age=4..}] run function sprint_racer:items/item_tick/missile_homing_teams

#fireballs make nearby players catch on fire
execute if entity @s[tag=fireball] at @s unless block ~ ~1 ~ water run function sprint_racer:items/item_tick/fireball_teams

#run physics
execute at @s run function sprint_racer:items/item_tick/missile_physics
execute if entity @s[tag=missile] at @s unless block ~ ~ ~ water unless block ~ ~ ~ light[waterlogged=true] run function sprint_racer:items/item_tick/missile_physics

#check for collision with stuff
#don't explode on our owner if we haven't bounced yet
execute if entity @s[tag=missile] unless score @s bounceCount matches 1.. at @s run function sprint_racer:items/item_tick/missile_entity_check_ignore_owner_teams
#after first bounce: don't care. hit anything that is hittable
execute if entity @s[tag=missile] if score @s bounceCount matches 1.. at @s run function sprint_racer:items/item_tick/missile_entity_check_teams