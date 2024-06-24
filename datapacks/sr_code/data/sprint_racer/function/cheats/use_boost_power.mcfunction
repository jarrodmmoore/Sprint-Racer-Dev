scoreboard players set @s speedBoost 1

tag @s add noSlow
effect give @s minecraft:instant_damage 1 0 false

particle flame ~ ~1 ~ 0.2 0.5 0.2 0.07 20 force
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 .7

scoreboard players set @s inputCooldown 35