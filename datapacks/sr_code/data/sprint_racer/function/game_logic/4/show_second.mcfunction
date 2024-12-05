tag @a[scores={finishPos=2,points=1..}] add dasMe
#tp @a[tag=dasMe] 1653 91 413 facing 1636 88 406
scoreboard players set #varyTeleport value 0
execute as @a[tag=dasMe] positioned 1653 91 413 facing 1636 88 406 run function sprint_racer:varied_teleport_thin

execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=2,aiPoints=1..}] positioned 1653 81 413 run summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["2nd_ai","lobbyprop"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/cosmetic/invisible_button","minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:0}],HandItems:[{id:"minecraft:iron_block",count:1,components:{"minecraft:item_model":"sr/item/sr_trophy_2nd"}},{}],HandDropChances:[0.0f,0.085f]}
execute as @e[tag=2nd_ai,type=zombie] positioned 1653 91 413 facing 1636 88 406 run function sprint_racer:varied_teleport_thin

execute as @a[limit=1,sort=random,tag=dasMe] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;11250603,15790320],fade_colors:[I;2651799],has_trail:true,has_twinkle:false}]}}}}
execute unless entity @a[limit=1,sort=random,tag=dasMe] as @e[limit=1,type=zombie,tag=2nd_ai] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"large_ball",colors:[I;11250603,15790320],fade_colors:[I;2651799],has_trail:true,has_twinkle:false}]}}}}

execute as @a[tag=dasMe] run function sprint_racer_language:lobby/award_ceremony/announce_second
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=2,aiPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/announce_second
execute as @a[tag=dasMe] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_2nd

execute if entity @a[tag=dasMe] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] as @a at @s run function sprint_racer:grand_prix/crowd_cheer

execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=2nd_ai] run function sprint_racer_language:lobby/award_ceremony/nobody_second
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=2nd_ai] run particle large_smoke 1653 92 413 0.5 0.5 0.5 0 20 force
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=2nd_ai] run playsound minecraft:entity.villager.no master @a 1653 92 413 3 1

tag @a[tag=dasMe] remove dasMe