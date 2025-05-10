#executed by the track armor stand corresponding to the track we're looking at

#we exist!
scoreboard players set #test2 value 1
#are we banned? report if so
execute if score #trackGridMode value matches 1 if entity @s[tag=rtBlacklist] run scoreboard players set #test2 value 0
execute if score #trackGridMode value matches 2 if entity @s[tag=btBlacklist] run scoreboard players set #test2 value 0