clear @s chicken_spawn_egg[custom_data~{elite15:1b}] 1
clear @s bricks[custom_data~{elite15:1b}] 1

execute unless entity @s[scores={moveState=3}] run summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","hyper","trap","giveID"],attributes:[{id:"generic.movement_speed",base:0}]}
execute if entity @s[scores={moveState=3}] run summon chicken ~ ~1 ~ {Tags:["chickenmine","cmineset","hyper","trap","giveID"],attributes:[{id:"generic.movement_speed",base:0}]}
scoreboard players operation @e[tag=giveID] playerID = @s playerID
execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1,sort=nearest] add itemCyan

#sneaking, throw item!
execute if entity @s[scores={moveState=3}] unless entity @e[tag=cheats,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity
execute if entity @e[tag=cheats,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity_super

tag @e[tag=giveID] remove giveID
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 2 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7

scoreboard players set @s inputCooldown 10