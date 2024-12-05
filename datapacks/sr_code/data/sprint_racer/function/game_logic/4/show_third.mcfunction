tag @a[scores={finishPos=3,points=1..}] add dasMe
#tp @a[tag=dasMe] 1653 90 399 facing 1636 88 406
scoreboard players set #varyTeleport value 0
execute as @a[tag=dasMe] positioned 1653 90 399 facing 1636 88 406 run function sprint_racer:varied_teleport_thin

execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=3,aiPoints=1..}] positioned 1653 80 399 run summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["3rd_ai","lobbyprop"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/cosmetic/invisible_button","minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:0}],HandItems:[{id:"minecraft:polished_granite",count:1,components:{"minecraft:item_model":"sr/item/sr_trophy_3rd"}},{}],HandDropChances:[0.0f,0.085f]}
execute as @e[tag=3rd_ai,type=zombie] positioned 1653 90 399 facing 1636 88 406 run function sprint_racer:varied_teleport_thin

execute as @a[limit=1,sort=random,tag=dasMe] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"small_ball",colors:[I;15435844],fade_colors:[I;5320730],has_trail:true,has_twinkle:false}]}}}}
execute unless entity @a[limit=1,sort=random,tag=dasMe] as @e[limit=1,type=zombie,tag=3rd_ai] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:17,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"small_ball",colors:[I;15435844],fade_colors:[I;5320730],has_trail:true,has_twinkle:false}]}}}}

execute as @a[tag=dasMe] run function sprint_racer_language:lobby/award_ceremony/announce_third
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=3,aiPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/announce_third
execute as @a[tag=dasMe] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_3rd

execute if entity @a[tag=dasMe] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] as @a at @s run function sprint_racer:grand_prix/crowd_claps

execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=3rd_ai] run function sprint_racer_language:lobby/award_ceremony/nobody_third
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=3rd_ai] run particle large_smoke 1653 91 399 0.5 0.5 0.5 0 20 force
execute unless entity @a[tag=dasMe] unless entity @e[limit=1,type=zombie,tag=3rd_ai] run playsound minecraft:entity.villager.no master @a 1653 91 399 3 .8
 
#everyone else face the podium now please
#execute as @a[tag=!dasMe] at @s run tp @s ~ ~ ~ facing 1653 92 406

tag @a[tag=dasMe] remove dasMe