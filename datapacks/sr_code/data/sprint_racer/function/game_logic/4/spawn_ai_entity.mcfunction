#spawn the thing!
function sprint_racer:ai/general/respawn/_index_entity_spawn

#show name
execute if score @s rNumber matches 1 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_1
execute if score @s rNumber matches 2 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_2
execute if score @s rNumber matches 3 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_3
execute if score @s rNumber matches 4 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_4
execute if score @s rNumber matches 5 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_5
execute if score @s rNumber matches 6 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_6
execute if score @s rNumber matches 7 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_7
execute if score @s rNumber matches 8 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_8
execute if score @s rNumber matches 9 as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_9

#a very special name override :)
execute if score @s aiEntity matches 18 as @e[tag=set_ai_no] run data modify entity @s CustomName set value {text:"\uE093",color:white}

#meddle with tags
$tag @e[tag=set_ai_no] add $(tag)
tag @e[tag=set_ai_no] add lobbyprop
tag @e[tag=set_ai_no] remove ai

#no AI for wither entity?
#execute as @e[tag=set_ai_no,type=wither] run data merge entity @s {NoAI:1b}

#give trophy
$item replace entity @e[tag=set_ai_no] weapon.mainhand with gold_block[item_model="$(model)"]

#cleanup
tag @e[tag=set_ai_no] remove set_ai_no

#old code. for reference
#summon zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["1st_ai","lobbyprop"],equipment:{mainhand:{id:"minecraft:gold_block",count:1,components:{"minecraft:item_model":"sr/item/sr_trophy_1st"}},head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/cosmetic/invisible_button","minecraft:enchantments":{depth_strider:3,binding_curse:1,vanishing_curse:1}}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0},attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:0}]}