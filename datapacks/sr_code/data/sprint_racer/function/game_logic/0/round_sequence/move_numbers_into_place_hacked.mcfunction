#executed by each number that needs moved


#roundText 1 and 2 don't need to shift. exit now
execute if entity @s[tag=roundText1] run return run tp @s ~ ~5.75 ~
execute if entity @s[tag=roundText2] run return run tp @s ~ ~4.75 ~
#=====


#delete all numbers
scoreboard players set @s lifespan 1