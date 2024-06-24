#after 1 tick of delay this will run properly

execute if entity @s[tag=spdbump2] run bossbar set minecraft:speedo players
execute if entity @s[tag=spdbump2] run tag @s remove spdbump
tag @s add spdbump2
execute if entity @s[tag=!spdbump] run tag @s remove spdbump2