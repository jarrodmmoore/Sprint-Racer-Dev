scoreboard players set @a[scores={sadist=21..}] sadist 0

#give item
tag @a remove hasSadChest
tag @a[tag=playing,nbt={Inventory:[{components:{"minecraft:custom_data":{sadChest:1b}}}]}] add hasSadChest
clear @a[tag=!hasSadChest] command_block[custom_data~{sadChest:1b}]
scoreboard players add @a[gamemode=adventure,tag=!noInventory,tag=!hasSadChest] sadist 1
function sprint_racer_language:_dlc_1/cheats/give_sadist_chest

#use item
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{sadChest:1b}] at @s run function sprint_racer:cheats/generate_item