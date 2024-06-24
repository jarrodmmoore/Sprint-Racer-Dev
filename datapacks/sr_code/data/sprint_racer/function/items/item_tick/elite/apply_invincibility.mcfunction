clear @s iron_ingot[custom_data~{elite7:1b}] 1

effect give @s resistance 1 250 true
scoreboard players add @s[scores={invulTime=..800}] invulTime 200
scoreboard players set @s[scores={invulTime=401..}] invulTime 400

playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~ 5 1
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 5 1
particle instant_effect ~ ~1 ~ .4 .6 .4 1 50 force

function sprint_racer_language:gameplay/misc_item_text/apply_invincibility

scoreboard players set @s inputCooldown 10