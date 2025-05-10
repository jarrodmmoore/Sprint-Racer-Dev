tag @s add look_at_me_hector
execute as @e[type=marker,limit=1,sort=nearest,scores={pathSource=1}] at @s facing entity @a[limit=1,tag=look_at_me_hector] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,limit=1,sort=nearest,scores={pathSource=1,AIBC_spread=1..}] add hasOptimalSpread
tag @s remove look_at_me_hector

#feedback
particle happy_villager ~ ~.2 ~ 0.2 0.2 0.2 1 20 force @a[gamemode=creative]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.9

scoreboard players set @s inputCooldown 6

scoreboard objectives remove pathSource