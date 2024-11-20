clear @s smooth_stone_slab[custom_data~{elite16:1b}] 1

summon item ~ ~1 ~ {Tags:["giveID","trapchestp2"],PickupDelay:100,Motion:[0.0d,0.5d,0.0d],Invulnerable:1b,Item:{id:"minecraft:smooth_stone_slab",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_data":{elite16:1b,stay:1b,item:1b,eliteitem:1b,groundDeploy:1b}}}}

#sneaking, throw item!
execute if entity @s[scores={moveState=3}] unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity_lite
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity

tag @e[limit=1,type=item,sort=nearest,tag=giveID] remove giveID

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.6

scoreboard players set @s inputCooldown 20