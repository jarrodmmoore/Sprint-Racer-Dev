execute unless entity @s[scores={enderman=..999}] run tag @s add goodtogo

execute if entity @s[tag=goodtogo] run clear @s *[custom_data~{no18:1b}] 1
scoreboard players set @s[tag=goodtogo] enderman 0

execute unless entity @s[tag=goodtogo] run function sprint_racer_language:gameplay/misc_item_text/error_enderman_already_active

tag @s remove goodtogo

scoreboard players set @s inputCooldown 20