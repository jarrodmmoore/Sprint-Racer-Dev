give @s golden_sword[custom_name='{"bold":true,"color":"red","italic":false,"translate":"sr.item.sword"}',damage=31,repair_cost=99999,custom_data={no4:1b,stay:1b,item:1b,normalitem:1b,stronk:1b},enchantments={levels:{"minecraft:knockback":10,"minecraft:sweeping_edge":3}},enchantment_glint_override=false,attribute_modifiers=[{id:"forcesworddamage",operation:"add_value",type:"attack_damage",amount:6,slot:"mainhand"},{id:"swordinstantattack",operation:"add_value",type:"attack_speed",amount:5,slot:"mainhand"},{id:"entity_interaction_range",type:"entity_interaction_range",amount:1,operation:"add_value",slot:"mainhand"}]] 1

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem4 += @s math
scoreboard players operation @s[tag=ai] aiHasMelee += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne