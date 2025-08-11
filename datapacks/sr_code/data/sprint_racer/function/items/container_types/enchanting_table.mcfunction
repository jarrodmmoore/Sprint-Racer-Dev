#this will only function if the user is holding a normal item to be enchanted
execute if items entity @s weapon.mainhand *[custom_data~{normalitem:1b}] run tag @s add holdingNitem

tag @s[tag=ai,scores={aiHasNormal=1..}] add holdingNitem

execute if entity @s[tag=holdingNitem] run tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest2,distance=..3] add chestTarget
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 1.5
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~ 2 1
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run particle block{block_state:"minecraft:obsidian"} ~ ~1.5 ~ .2 .2 .2 1 15
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run particle block{block_state:"minecraft:diamond_block"} ~ ~1.5 ~ .2 .2 .2 1 5
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run particle witch ~ ~1.6 ~ .2 .2 .2 1 5
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
#execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest,distance=..3] at @s run kill @e[limit=1,sort=nearest,type=item,tag=enchantBook,distance=..3]
#execute as @e[type=item,tag=enchantBook] at @s unless entity @e[type=armor_stand,tag=itemcontainer,distance=..2] run kill @s
execute as @e[tag=chestTarget,type=armor_stand,distance=..3] run function sprint_racer:items/container_types/destroy_chest_target

execute if entity @s[tag=!ai,tag=holdingNitem] run function sprint_racer:items/enchant_index
execute if entity @s[tag=ai,tag=holdingNitem] run function sprint_racer:items/ai_enchant/__index
execute if entity @s[tag=holdingNitem] run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.2
execute if entity @s[tag=holdingNitem,scores={actionbarState=4}] run scoreboard players set @s actionbarState2 0

execute if entity @s[tag=holdingNitem] run scoreboard players set @s itemCooldown 80
execute if entity @s[tag=holdingNitem] run scoreboard players set @s itemCooldown2 0
execute if entity @s[tag=!holdingNitem,scores={actionbarState=..4}] run scoreboard players set @s actionbarState 4
execute if entity @s[tag=!holdingNitem,scores={actionbarState=..4}] run scoreboard players set @s actionbarState2 75
scoreboard players set @s itemBlockState 0

tag @s remove holdingNitem