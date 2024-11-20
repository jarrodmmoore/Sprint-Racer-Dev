scoreboard players set #test value 10
execute if entity @s[distance=..4] run scoreboard players set #test value 3
execute if entity @s[distance=..3] run scoreboard players set #test value 2
execute if entity @s[distance=..2] run scoreboard players set #test value 1

execute if score #test value matches 3 run damage @s 1 explosion at ~ ~ ~
execute if score #test value matches 2 run damage @s 2 explosion at ~ ~ ~
execute if score #test value matches 1 run damage @s 3 explosion at ~ ~ ~

execute if entity @s[type=wither] run function sprint_racer:explode_fake_damage_calc_wither