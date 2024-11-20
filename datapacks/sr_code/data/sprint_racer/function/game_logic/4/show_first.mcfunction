tag @a[scores={finishPos=1,points=1..}] add dasMe
tp @a[tag=dasMe] 1653 92 406 facing 1636 88 406

execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=1,aiPoints=1..}] positioned 1653 92 406 run summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["1st_ai","lobbyprop"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:custom_model_data":1116111,"minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:0}],HandItems:[{id:"minecraft:gold_block",count:1,components:{"minecraft:custom_model_data":1111111}},{}],HandDropChances:[0.0f,0.085f]}

execute as @a[limit=1,sort=random,tag=dasMe] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:1,has_twinkle:1},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:0,has_twinkle:0}]}}}}
execute unless entity @a[limit=1,sort=random,tag=dasMe] as @e[limit=1,type=zombie,tag=1st_ai] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:1,has_twinkle:1},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:0,has_twinkle:0}]}}}}

execute as @a[tag=dasMe] run function sprint_racer_language:lobby/award_ceremony/announce_first
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=1,aiPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/announce_first
execute as @a[tag=dasMe] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_1st

execute if entity @a[tag=dasMe] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] as @a at @s run function sprint_racer:grand_prix/crowd_cheer_big
 
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=1st_ai] run function sprint_racer_language:lobby/award_ceremony/nobody_first
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=1st_ai] run particle large_smoke 1653 93 406 0.5 0.5 0.5 0 20 force
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=1st_ai] run playsound minecraft:entity.villager.no master @a 1653 93 406 3 1.2

tag @a[tag=dasMe] remove dasMe