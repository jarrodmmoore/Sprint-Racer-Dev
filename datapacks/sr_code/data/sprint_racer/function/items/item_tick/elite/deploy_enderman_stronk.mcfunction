execute unless entity @s[scores={enderman=..999}] run tag @s add goodtogo

execute if entity @s[tag=goodtogo] run clear @s enderman_spawn_egg[custom_data~{elite18:1b}] 1
execute if entity @s[tag=goodtogo] run clear @s black_terracotta[custom_data~{elite18:1b}] 1
tag @s[tag=goodtogo] add assassin
scoreboard players set @s[tag=goodtogo] enderman 0

execute if entity @s[tag=goodtogo] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .8

execute unless entity @s[tag=goodtogo] run function sprint_racer_language:gameplay/misc_item_text/error_enderman_already_active

tag @s remove goodtogo

scoreboard players set @s inputCooldown 20