clear @s white_stained_glass[custom_data~{elite6:1b}] 1

tag @s[scores={anvil=..999}] add dodge

effect give @s invisibility 1 1 true
scoreboard players add @s invisibility 240
scoreboard players set @s[scores={invisibility=481..}] invisibility 480

scoreboard players reset @s useDagger
clear @s iron_sword[custom_data~{dagger:1b}]
function sprint_racer_language:gameplay/give_item/dagger

playsound minecraft:entity.vex.hurt master @a
playsound minecraft:item.armor.equip_gold master @a

scoreboard players set @s inputCooldown 10