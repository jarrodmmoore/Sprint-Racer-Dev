#executed by a player

execute rotated ~ 0 positioned ^ ^ ^5 run tag @e[limit=1,sort=nearest,tag=thief,tag=phase3,tag=!myEndie3,tag=!endieMoved,tag=!goodbye] add myEndie3
execute if entity @s[scores={enderSteal=..5}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^3 facing entity @s eyes
execute if entity @s[scores={enderSteal=6}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^3.4 facing entity @s eyes
execute if entity @s[scores={enderSteal=7}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^3.8 facing entity @s eyes
execute if entity @s[scores={enderSteal=8}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^4.2 facing entity @s eyes
execute if entity @s[scores={enderSteal=9}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^4.6 facing entity @s eyes
execute if entity @s[scores={enderSteal=10}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^5.0 facing entity @s eyes
execute if entity @s[scores={enderSteal=11}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^5.4 facing entity @s eyes
execute if entity @s[scores={enderSteal=12}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^5.8 facing entity @s eyes
execute if entity @s[scores={enderSteal=13}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^6.2 facing entity @s eyes
execute if entity @s[scores={enderSteal=14}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^6.6 facing entity @s eyes
execute if entity @s[scores={enderSteal=15..49}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] ^ ^ ^7 facing entity @s eyes
execute if entity @s[scores={enderSteal=..49}] rotated ~ 0 positioned ^ ^ ^5 run scoreboard players set @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] lifespan 10
execute if entity @s[scores={enderSteal=50..}] run tag @e[limit=1,sort=nearest,tag=myEndie3,tag=!endieMoved] add goodbye

execute if entity @s[tag=ai,scores={enderSteal=3}] run scoreboard players set @s aiHoldingItem 0
execute if entity @s[tag=!undead,scores={enderSteal=3},tag=getClocked] run effect give @s instant_damage 1 1 true
execute if entity @s[tag=undead,scores={enderSteal=3},tag=getClocked] run effect give @s instant_health 1 1 true

#give enderman the proper hand item
execute if entity @s[scores={enderSteal=1}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal
execute if entity @s[scores={enderSteal=1}] as @a run playsound minecraft:entity.evoker_fangs.attack master @s ~ 100000 ~ 100000 2

execute if entity @s[scores={enderSteal=29}] at @e[tag=myEndie3,limit=1,sort=nearest] run playsound minecraft:entity.enderman.scream master @a

execute if entity @s[scores={enderSteal=50}] at @e[tag=myEndie3,limit=1,sort=nearest] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1.5 ~ 0.2 0.4 0.2 0 30
execute if entity @s[scores={enderSteal=50}] at @e[tag=myEndie3,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport master @a
execute if entity @s[scores={enderSteal=50},tag=getClocked] unless entity @e[tag=w,type=armor_stand,tag=teamplay] at @e[tag=myEndie3,limit=1,sort=nearest] run summon tnt ~ ~ ~ {fuse:10000,Motion:[0.0d,0.3d,0.0d]}

tag @e[tag=myEndie3,limit=1,sort=nearest,tag=!endieMoved] add endieMoved