scoreboard players add @s age 1

#for homing missiles...
execute if entity @s[tag=homing] at @s run function sprint_racer:items/item_tick/missile_homing_fast_teams

execute if entity @s[tag=!homing] at @s run tp @s ^ ^ ^1.25
execute if entity @s[tag=!homing] at @s run particle large_smoke ~ ~1.6 ~ .05 .05 .05 .01 1 force

#team trails
execute if entity @s[tag=!itemCyan] at @s run particle falling_dust{block_state:"minecraft:orange_concrete"} ^ ^1.6 ^-3 .2 .2 .2 .01 1 force
execute if entity @s[tag=itemCyan] at @s run particle falling_dust{block_state:"minecraft:cyan_concrete"} ^ ^1.6 ^-3 .2 .2 .2 .01 1 force

#fireballs make nearby players catch on fire
execute if entity @s[tag=fireball] at @s if entity @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] run function sprint_racer:items/item_tick/fireball_check_player_teams
execute if entity @s[tag=fireball] at @s run particle flame ~ ~1 ~ 0.2 0.2 0.2 .1 8
execute if entity @s[tag=fireball] at @s run particle flame ~ ~1 ~ 0.2 0.2 0.2 .1 2 force

#execute as @e[tag=missile,type=armor_stand] at @s unless block ~ ~1.5 ~ air unless block ~ ~1.5 ~ water unless block ~ ~1.5 ~ structure_void run function sprint_racer:items/item_tick/missile_explode_teams
execute as @e[tag=missile,type=armor_stand] at @s unless block ^ ^1.5 ^ #sprint_racer:missile_do_not_explode run function sprint_racer:items/item_tick/missile_explode_fake_teams
execute as @e[tag=missile,type=armor_stand] at @s unless block ^ ^1.5 ^.25 #sprint_racer:missile_do_not_explode run function sprint_racer:items/item_tick/missile_explode_fake_teams
#execute as @e[tag=missile,type=armor_stand,scores={age=10..}] at @s if entity @e[tag=playing,gamemode=!spectator,distance=..2,scores={invisibility=..0}] run function sprint_racer:items/item_tick/missile_explode_teams
execute if entity @s[scores={age=2..}] at @s positioned ^ ^1.5 ^ if entity @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] run function sprint_racer:items/item_tick/missile_check_player_teams

scoreboard players set @s[scores={age=75..}] lifespan 0
tag @s[scores={age=75..}] remove missile

#there are still missiles? go again
execute if entity @s[tag=missile] run function sprint_racer:items/item_tick/missile_fast_teams