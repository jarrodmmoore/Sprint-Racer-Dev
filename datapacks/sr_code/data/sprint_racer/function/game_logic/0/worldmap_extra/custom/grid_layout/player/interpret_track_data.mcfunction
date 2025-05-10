#executed by the custom armor stand corresponding to the track we're looking at

#need to report the type of preview image we have

execute if score #trackGridMode value matches 1 run scoreboard players set #test2 value -10
execute if score #trackGridMode value matches 1 if entity @s[tag=trackNovice] run scoreboard players set #test2 value -11
execute if score #trackGridMode value matches 1 if entity @s[tag=trackIntermed] run scoreboard players set #test2 value -12
execute if score #trackGridMode value matches 1 if entity @s[tag=trackExpert] run scoreboard players set #test2 value -13
execute if score #trackGridMode value matches 1 if entity @s[tag=trackMaster] run scoreboard players set #test2 value -14
execute if score #trackGridMode value matches 1 if entity @s[tag=customPreview] run scoreboard players set #test2 value -15

execute if score #trackGridMode value matches 2 run scoreboard players set #test2 value -20
execute if score #trackGridMode value matches 2 if entity @s[tag=trackSmall] run scoreboard players set #test2 value -21
execute if score #trackGridMode value matches 2 if entity @s[tag=trackMedium] run scoreboard players set #test2 value -22
execute if score #trackGridMode value matches 2 if entity @s[tag=trackLarge] run scoreboard players set #test2 value -23
execute if score #trackGridMode value matches 2 if entity @s[tag=trackTiny] run scoreboard players set #test2 value -25
execute if score #trackGridMode value matches 2 if entity @s[tag=customPreview] run scoreboard players set #test2 value -24
