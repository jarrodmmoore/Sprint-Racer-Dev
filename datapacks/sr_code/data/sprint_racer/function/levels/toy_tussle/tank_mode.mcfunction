#everyone gets a tank on their head
execute as @a[gamemode=adventure] unless score @s kart_model matches 10.. run function sprint_racer:levels/toy_tussle/tank_model_apply_player
execute as @e[tag=ai,tag=can_wear_hat] unless score @s kart_model matches 10.. run function sprint_racer:levels/toy_tussle/tank_model_apply_ai

#no free missile in time attack
execute unless score global gameState matches 3 run return 0
#=====

#free missile once respawned
execute as @a[gamemode=adventure,scores={invisibility=..0,timeSinceDeath=40..999}] run function sprint_racer:levels/toy_tussle/player_get_free_missile
execute as @e[tag=ai,scores={invisibility=..0,timeSinceDeath=40..999}] run function sprint_racer:levels/toy_tussle/player_get_free_missile