#found a target, clear item
execute if entity @e[tag=getJustice] run clear @s anvil[custom_data~{no17:1b}] 1
execute if entity @e[tag=getJustice] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.1
execute if entity @e[tag=getJustice] run function sprint_racer_language:gameplay/misc_item_text/anvil/justice_is_served
execute if entity @e[tag=getJustice] run scoreboard players set @s inputCooldown 20

#could not find a target, do not consume item
execute unless entity @e[tag=getJustice] run function sprint_racer_language:gameplay/misc_item_text/anvil/cannot_find_target
execute unless entity @e[tag=getJustice] run scoreboard players set @s inputCooldown 10

#give the target the anvil effect
scoreboard players set @e[tag=getJustice] anvil 0
scoreboard players operation @e[tag=getJustice] attackerID = @s playerID
scoreboard players set @e[tag=getJustice] attackTime 150
tag @e[tag=getJustice] remove getJustice