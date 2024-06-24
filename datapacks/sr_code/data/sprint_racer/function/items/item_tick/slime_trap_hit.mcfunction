tag @e[limit=1,sort=nearest,tag=slimetrap,tag=sDeployed,type=armor_stand] add hitSlime

scoreboard players set @s[scores={hitstun=..10,resistTime=1..}] hitstun 10
scoreboard players set @s[scores={hitstun=..25,resistTime=..0}] hitstun 25
scoreboard players set @s[scores={rateDecel=..100,resistTime=1..}] rateDecel 100
scoreboard players set @s[scores={rateDecel=..300,resistTime=..0}] rateDecel 300

effect give @s[tag=!ai,scores={resistTime=..0}] slowness 1 0 true

scoreboard players operation @s attackerID = @e[tag=hitSlime,type=armor_stand,limit=1] playerID
scoreboard players set @s attackTime 100

tp @e[tag=hitSlime,limit=1,type=armor_stand] @s
effect give @s resistance 1 1 true
effect give @s[scores={resistTime=1..}] resistance 1 3 true
effect give @s[tag=!undead] instant_damage 1 0 true
effect give @s[tag=undead] instant_health 1 0 true
execute if entity @s[type=wither] run function sprint_racer:ai/general/wither_take_damage

playsound minecraft:entity.slime.squish master @s

tag @e[tag=hitSlime,type=armor_stand] add dissolve