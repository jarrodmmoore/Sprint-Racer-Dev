#particles go here
execute if entity @s[tag=trapchestp] run particle dust{color:[0.5,0.4,0.2],scale:2} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..50]
execute if entity @s[tag=trapchestp2] run particle dust{color:[0.8,0.2,0.8],scale:2} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..50]

#adopt the player ID of the nearest player
scoreboard players add @s age 1
execute if entity @s[scores={age=1}] run function sprint_racer:items/item_tick/ground_deploy_entity_owner
execute if entity @s[scores={age=1}] at @s unless score @s playerID matches -999.. run scoreboard players operation @s playerID = @e[limit=1,sort=nearest,tag=activeplayer] playerID

#deploy the instant we touch the ground
execute if entity @s[nbt={OnGround:1b}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/_index