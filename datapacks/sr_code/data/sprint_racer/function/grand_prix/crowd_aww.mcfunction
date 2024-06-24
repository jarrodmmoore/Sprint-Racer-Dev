tag @s add myself

execute at @s run playsound minecraft:custom_sfx/crowd4 master @s ~ 100000 ~ 100000 1
scoreboard players set @s crowdCooldown 40

execute at @s run playsound minecraft:custom_sfx/crowd4 master @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] ~ 100000 ~ 100000 1
scoreboard players set @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] crowdCooldown 40

tag @s remove myself