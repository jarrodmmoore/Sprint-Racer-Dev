#lone player always remembers
tag @s add am_i_alone
execute unless entity @a[tag=playing,tag=!am_i_alone] run scoreboard players operation @s aiLevel = global aiLevel
tag @s remove am_i_alone

#if the aiLevel was low and we lost, always remember that
execute if score global aiLevel matches ..6 if score @s finishPos matches 2.. run scoreboard players operation @s aiLevel = global aiLevel

#winning player always remembers
execute if score @s finishPos matches 1 run scoreboard players operation @s aiLevel = global aiLevel

#otherwise, don't remember anything