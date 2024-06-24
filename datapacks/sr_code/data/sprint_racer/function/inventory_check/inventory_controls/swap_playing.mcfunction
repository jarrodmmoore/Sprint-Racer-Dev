scoreboard players set #executed value 0

execute if entity @s[tag=forcespectate] run function sprint_racer:inventory_check/inventory_controls/become_player
execute if score #executed value matches 0 if entity @s[tag=!forcespectate] run function sprint_racer:inventory_check/inventory_controls/become_spectator