#this will loop up to 10 times via function recursion
clear @s gold_ingot[custom_data~{normalitem:1b}] 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9}] if items entity @s weapon.mainhand gold_ingot[custom_data~{no10:1b}] run function sprint_racer:items/enchant_item/10

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite10