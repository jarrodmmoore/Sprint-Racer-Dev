scoreboard players add @s age 1
tag @s[scores={age=1500..}] add dissolve

execute if entity @s[tag=!sDeployed] run function sprint_racer:items/item_tick/magma_trap_undeployed
execute if entity @s[tag=sDeployed] run function sprint_racer:items/item_tick/magma_trap_deployed

#dissolve when it's time to die
execute if entity @s[tag=dissolve] at @s run function sprint_racer:items/item_tick/magma_trap_dissolve