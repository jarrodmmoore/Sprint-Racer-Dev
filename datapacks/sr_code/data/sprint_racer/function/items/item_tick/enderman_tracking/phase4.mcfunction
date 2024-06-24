#executed by a player

execute rotated ~ 0 positioned ^ ^ ^7 run tag @e[limit=1,sort=nearest,tag=thief,tag=phase4,tag=!myEndie4,tag=!endieMoved,tag=!goodbye] add myEndie4
execute if entity @s[scores={enderman=..499}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie4,tag=!endieMoved] ^ ^ ^7 facing entity @s eyes
execute if entity @s[scores={enderman=..499}] rotated ~ 0 positioned ^ ^ ^5 run scoreboard players set @e[limit=1,sort=nearest,tag=myEndie4,tag=!endieMoved] lifespan 10
execute if entity @s[scores={enderman=500}] run tag @e[limit=1,sort=nearest,tag=myEndie4,tag=!endieMoved] add goodbye

#give enderman the proper hand item
execute if entity @s[scores={enderman=450,giveItem=0..}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give

#give the item our enderman friend stole for us
execute if entity @s[scores={enderman=470}] as @e[tag=myEndie4] run data merge entity @s {carriedBlockState:{Name:"minecraft:air"}}
execute if entity @s[scores={enderman=470}] run function sprint_racer:items/item_tick/give_stolen_item/_index
execute if entity @s[scores={enderman=470}] run scoreboard players set @s giveItem -1
execute if entity @s[scores={enderman=470}] run scoreboard players set @s giveQty 0

execute if entity @s[scores={enderman=455,giveItem=0..}] at @e[tag=myEndie4,limit=1,sort=nearest] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 1.2
execute if entity @s[scores={enderman=455,giveItem=..-1}] at @e[tag=myEndie4,limit=1,sort=nearest] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 .8

execute if entity @s[scores={enderman=469,giveItem=..-1}] run function sprint_racer_language:gameplay/misc_item_text/enderman_found_nothing

execute if entity @s[scores={enderman=500}] at @e[tag=myEndie4,limit=1,sort=nearest] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1.5 ~ 0.2 0.4 0.2 0 30
execute if entity @s[scores={enderman=500}] at @e[tag=myEndie4,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport master @a

tag @e[tag=myEndie4,limit=1,sort=nearest,tag=!endieMoved] add endieMoved