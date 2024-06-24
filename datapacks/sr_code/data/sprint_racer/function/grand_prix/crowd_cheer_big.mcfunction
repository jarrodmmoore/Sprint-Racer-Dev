tag @s add myself

execute at @s run playsound minecraft:custom_sfx/crowd2 master @s ~ ~ ~ 1 1 1
scoreboard players set @s crowdCooldown 100

execute at @s run playsound minecraft:custom_sfx/crowd2 master @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] ~ ~ ~ 1 1 1
scoreboard players set @a[tag=!myself,tag=!playing,distance=..10,scores={crowdCooldown=..0}] crowdCooldown 100

tag @s remove myself