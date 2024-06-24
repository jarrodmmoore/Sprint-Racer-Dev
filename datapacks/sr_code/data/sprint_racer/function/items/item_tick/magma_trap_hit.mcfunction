tag @e[limit=1,sort=nearest,tag=magmatrap,tag=sDeployed,type=armor_stand] add hitMagma

scoreboard players set @s[scores={hitstun=..50,resistTime=1..}] hitstun 50
scoreboard players set @s[scores={hitstun=..75,resistTime=..0}] hitstun 75
scoreboard players set @s[scores={rateDecel=..40,resistTime=1..}] rateDecel 40
scoreboard players set @s[scores={rateDecel=..100,resistTime=..0}] rateDecel 100

effect give @s[tag=!ai,scores={resistTime=..0}] slowness 1 0 true

scoreboard players operation @s attackerID = @e[tag=hitMagma,limit=1] playerID
scoreboard players set @s attackTime 100

tp @e[tag=hitMagma,limit=1,type=armor_stand] @s
effect give @s resistance 1 1 true
effect give @s[scores={resistTime=1..}] resistance 1 3 true
effect give @s[tag=!undead] instant_damage 1 0 true
effect give @s[tag=undead] instant_health 1 0 true
execute if entity @s[type=wither] run function sprint_racer:ai/general/wither_take_damage_big
scoreboard players set @s burn 1

playsound minecraft:entity.magma_cube.squish master @s
particle flame ~ ~1 ~ 0.1 0.4 0.1 0.05 20

tag @e[tag=hitMagma,type=armor_stand] add dissolve