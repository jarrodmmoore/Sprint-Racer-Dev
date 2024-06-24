scoreboard players set @s elytraTimer 0
item replace entity @s armor.chest with air
effect clear @s slow_falling
effect clear @s levitation
clear @s firework_rocket[custom_data~{rocketboost:1b}]

scoreboard players set @s[scores={actionbarState=..1}] actionbarState2 35
scoreboard players set @s[scores={actionbarState=..1}] actionbarState -3

scoreboard players set @s rateAccel 300
scoreboard players set @s rateDecel 0