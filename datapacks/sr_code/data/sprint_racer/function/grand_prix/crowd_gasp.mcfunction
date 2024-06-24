tag @s add myself

execute at @s run playsound minecraft:custom_sfx/crowd1 master @s ~ ~ ~ 1 1 1
scoreboard players set @s crowdCooldown 70

execute at @s run playsound minecraft:custom_sfx/crowd1 master @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] ~ ~ ~ 1 1 1
scoreboard players set @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] crowdCooldown 70

tag @s remove myself